import { Injectable } from "@nestjs/common";
import { PrismaService } from "src/prisma/prisma.service";
import { AuthDto } from "./dto";

@Injectable({})
export class AuthService {
    constructor(private prisma: PrismaService ){}

    signup(authdto: AuthDto){

        this.prisma.user.create({
            data:{
                displayName : authdto.displayName,
                email: authdto.email,
                token: authdto.token,
                photoUrl: authdto.photoUrl
            }
        })
    }

    signin(){}
}