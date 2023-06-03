/* rexx cal*/
do forever
    say "Please enter two number and one operator for calculation"

    /* input 1 */
    do forever
        say "Please enter first number:"
        parse pull num1
        if datatype(num1) = "NUM" then leave
        else say "invalid input!"
    end

    /* input 2 */
    do forever
        say "Please enter second number:"
        parse pull num2
        if datatype(num2) = "NUM" then leave
        else say "invalid input!"
    end

    /* input operator */
    do forever
        say "Please enter operator  (+, -, *, /):"
        parse pull operator
        if operator = "+" | operator = "-" | operator = "*" | operator = "/" then leave
        else say "invalid input!"
    end

    /*func*/
    select
        when operator = "+" then res = num1 + num2
        when operator = "-" then res = num1 - num2
        when operator = "*" then res = num1 * num2
        when operator = "/" then
            if num2 \== 0 then 
            res = num1 / num2
            else res = 'undefined'
    end

    /*output*/
    say "Result: " res
    
    do forever
        say "enter r for reload or enter q for quit"
        parse pull choice
        if choice = "q" then exit
        else if choice = "r" then leave
        else say "invalid input!"
    end
end
