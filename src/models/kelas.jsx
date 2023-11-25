// import prisma from "./prisma";

import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient()

export const getKelas =async()=>{
    try {
        const kelas = await prisma.kelas.findMany()
        return kelas
    } catch (error) {
        return null
    }

}