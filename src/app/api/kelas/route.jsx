import { getKelas } from "@/models/kelas"
import { NextResponse } from "next/server"

export  async function GET(){
    const data = await getKelas()
    return NextResponse.json(data,{status:200})
}