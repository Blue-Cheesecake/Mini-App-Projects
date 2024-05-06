use std::{
    io::{self, Write},
    u8,
};

struct HiddenWordStates {
    raw_value: String,
    is_taken_map: Vec<bool>,
}

impl HiddenWordStates {
    fn init_is_take_map_raw_value(&mut self) {
        let mut result: Vec<bool> = Vec::new();

        for c in self.raw_value.chars() {
            if c == ' ' {
                result.push(true);
                continue;
            }
            result.push(false);
        }

        self.is_taken_map = result;
    }

    fn take(&mut self, ch: char) -> bool {
        let mut is_found = false;
        for (i, sch) in self.raw_value.chars().enumerate() {
            if sch == ch {
                let val = self.is_taken_map.get_mut(i).unwrap();
                *val = true;
                is_found = true;
            }
        }

        return is_found;
    }

    fn is_all_filled(&self) -> bool {
        let mut result = true;

        for is_taken in self.is_taken_map.iter() {
            if !is_taken {
                result = false;
                break;
            }
        }

        result
    }
}

struct SimpleValidation {}
struct Cli {}

trait Validation {
    fn validate_guess_input(s: &String) -> Result<char, &str>;
    fn is_hidden_word_input_valid(s: &String) -> bool;
    fn validate_allowance_num_input(s: &String) -> Result<u8, &str>;
}

impl Validation for SimpleValidation {
    fn validate_guess_input(s: &String) -> Result<char, &str> {
        if s.trim().len() != 1 {
            return Result::Err("the guess input should only contain 1 character");
        }

        let c = s.to_uppercase().chars().next().unwrap();
        return Result::Ok(c);
    }

    fn is_hidden_word_input_valid(s: &String) -> bool {
        for b in s.chars() {
            if !b.is_ascii_alphabetic() && b != ' ' {
                return false;
            }
        }

        return true;
    }

    fn validate_allowance_num_input(s: &String) -> Result<u8, &str> {
        match s.trim().parse::<u8>() {
            Ok(val) => Result::Ok(val),
            Err(_) => Result::Err("coun't parse this string into u8"),
        }
    }
}

trait Ui {
    fn print_setting_up();
    fn print_current_word_status(states: &HiddenWordStates);
    fn print_lives(val: &u8);
}

impl Ui for Cli {
    fn print_setting_up() {
        println!("_____________________________");
        println!("-------- Setting Up  --------");
        println!("_____________________________");
    }

    fn print_current_word_status(app_states: &HiddenWordStates) {
        let length = app_states.raw_value.len();
        // Making |   <space>  |
        let mut spaces_line = String::from("|");
        spaces_line.push_str(
            std::iter::repeat(" ")
                .take(length * 2 + 1)
                .collect::<String>()
                .as_str(),
        );
        spaces_line.push('|');

        // Making | __R___W  |
        let mut word_line = String::from("| ");
        for (i, c) in app_states.raw_value.chars().enumerate() {
            let &is_taken = app_states.is_taken_map.get(i).unwrap();
            if is_taken {
                word_line.push(c);
                word_line.push(' ');
                continue;
            }
            word_line.push_str("_ ");
        }
        word_line.push_str("|");

        println!("{spaces_line}");
        println!("{word_line}");
        println!("{spaces_line}");
    }

    fn print_lives(val: &u8) {
        println!("Lives: {val}");
    }
}

fn main() {
    let mut word_states = HiddenWordStates {
        raw_value: String::new(),
        is_taken_map: vec![],
    };
    let mut allowance_num: u8;

    // Get the hidden word from Admin
    loop {
        let mut input = String::new();
        print!("(ADMIN) Set up Hidden Word: ");

        // The Rust will flush the output to terminal only if get the \n.
        // This line will force Rust to flush
        io::stdout().flush().expect("failed to flush the stdout");
        io::stdin()
            .read_line(&mut input)
            .expect("failed to read hidden word");

        input = String::from(input.trim());
        if SimpleValidation::is_hidden_word_input_valid(&input) {
            word_states.raw_value = input.to_uppercase();
            word_states.init_is_take_map_raw_value();
            break;
        }
        println!("the hidden word should be a valid string")
    }

    // Get the number of allowance to be incorrect
    loop {
        let mut input = String::new();
        print!("(ADMIN) Set up a Number of Allowance to be Incorrect: ");

        io::stdout().flush().expect("failed to flush stdou");
        io::stdin()
            .read_line(&mut input)
            .expect("failed to read allowance number");

        match SimpleValidation::validate_allowance_num_input(&input) {
            Ok(val) => {
                allowance_num = val;
                break;
            }
            Err(msg) => {
                println!("{msg}");
            }
        }
    }

    Cli::print_setting_up();
    Cli::print_current_word_status(&word_states);

    loop {
        Cli::print_lives(&allowance_num);

        let mut input = String::new();

        io::stdout().flush().expect("failed to flush stdou");
        io::stdin()
            .read_line(&mut input)
            .expect("failed to read guess char");

        match SimpleValidation::validate_guess_input(&input) {
            Ok(ch) => {
                if word_states.take(ch) {
                    Cli::print_current_word_status(&word_states);
                } else {
                    allowance_num -= 1;
                    println!("-- Incorrect --");
                }
            }
            Err(_) => {
                println!("Invalid guess input");
            }
        }

        if allowance_num == 0 {
            println!("---- Lose ----");
            break;
        }
        if word_states.is_all_filled() {
            println!("++++ Winner ++++");
            break;
        }
    }
}
