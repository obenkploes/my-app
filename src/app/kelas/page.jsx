'use client'
import { Card,Button,Table } from "react-bootstrap"
import { MdAdd } from "react-icons/md";

const kelas = () => {
    return (
        <Card >
            <Card.Header className="text-bg-primary d-flex justify-content-between">
                <Card.Title>Data kelas</Card.Title>
                <Button className="btn btn-sm btn-light">
                    <MdAdd /> Tambah
                </Button>
            </Card.Header>
            <Card.Body >
                <Table className="table-sm table-bordered">
                    <thead >
                        <tr className="bg-primary">
                            <th>No</th>
                            <th>No</th>
                            <th>No</th>
                            <th>No</th>
                        </tr>
                    </thead>
                </Table>
            </Card.Body>

        </Card>
    )
}

export default kelas