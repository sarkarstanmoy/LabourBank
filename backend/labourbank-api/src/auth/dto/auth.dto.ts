import { IsEmail, IsNotEmpty } from "class-validator"

export class AuthDto{
    @IsNotEmpty()
    token:string;


    @IsNotEmpty()
    @IsEmail()
    email:string;

    @IsNotEmpty()
    displayName:string;


    photoUrl:string;

    @IsNotEmpty()
    mobileNumber: string
}