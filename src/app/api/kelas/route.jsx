import { getKelas } from "@/models/kelas"


export  async function GET(req ,res){
    const data = await getKelas()
    return Response.json(data)
}xu