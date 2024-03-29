import { Body, Controller, Post } from "@nestjs/common";
import { AuthService } from "./auth.service";
import { AuthDto } from "./dto";

@Controller('auth')
export class AuthController {

    constructor(private authservice:AuthService){
       
    }

    @Post('v1/signup')
    signup(@Body() dto:AuthDto){
            return this.authservice.signup(dto);
    }

    @Post('v1/signin')
    signin(){
            return this.authservice.signin();
    }

}