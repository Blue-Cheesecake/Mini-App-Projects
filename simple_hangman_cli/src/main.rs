use std::{
    io::{self, Write},
    u8,
};

struct SimpleValidation {}
struct CommandLineInterface {}

trait Validation {
    fn validate_guess_input(s: &String) -> Result<char, &str>;
    fn is_hidden_word_input_valid(s: &String) -> bool;
    fn validate_allowance_num_input(s: &String) -> Result<u8, &str>;
}

impl Validation for SimpleValidation {
    fn validate_guess_input(s: &String) -> Result<char, &str> {
        if s.len() != 1 {
            return Result::Err("the guess input should only contain 1 character");
        }

        let c = s.to_uppercase().chars().next().unwrap();
        return Result::Ok(c);
    }

    fn is_hidden_word_input_valid(s: &String) -> bool {
        for b in s.chars() {
            if !b.is_ascii_alphabetic() {
                dbg!(b);
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

trait UserInterface {
    fn print_setting_up();
    fn print_current_word_status();
    fn print_lives(val: &u8);
}

impl UserInterface for CommandLineInterface {
    fn print_setting_up() {
        println!("_____________________________");
        println!("-------- Setting Up  --------");
        println!("_____________________________");
    }

    fn print_current_word_status() {
        todo!()
    }

    fn print_lives(val: &u8) {
        println!("Lives: {val}");
    }
}

fn main() {
    let mut hidden_word: String;
    let allowance_num: u8;

    // Get the hidden word from Admin
    loop {
        hidden_word = String::new();
        print!("(ADMIN) Set up Hidden Word: ");

        // The Rust will flush the output to terminal only if get the \n.
        // This line will force Rust to flush
        io::stdout().flush().expect("failed to flush the stdout");

        io::stdin()
            .read_line(&mut hidden_word)
            .expect("failed to read hidden word");

        hidden_word = String::from(hidden_word.trim());
        if SimpleValidation::is_hidden_word_input_valid(&hidden_word) {
            hidden_word = hidden_word.to_uppercase();
            break;
        }
        println!("the hidden word should be a valid string")
    }

    // Get the number of allowance to be incorrect
    loop {
        let mut input = String::new();
        print!("(ADMIN) Set up a Number of Allowance to be Incorrect: ");

        io::stdout().flush().expect("failde to flush stdou");

        io::stdin()
            .read_line(&mut input)
            .expect("failde to read allowance number");

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

    CommandLineInterface::print_setting_up();

    println!("Hidden word: {hidden_word}");
    println!("Allowance number is: {allowance_num}");
}
