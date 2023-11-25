import Link from "next/link"
import { MdContacts } from "react-icons/md";
const Navbar = () => {
    return (
        <nav className="navbar navbar-dark text-bg-primary navbar-expand-lg ">
            <div className="container">
                <span className="navbar-brand fw-bold">SPP Apps</span>
                <div className="collapse navbar-collapse">
                    <ul className="nav">
                        <li className="nav-item">
                            <Link href={('/kelas')} className="nav-link text-white align-middle align-align-items-center">
                                <MdContacts  className="mb-1 me-1"/>
                                Kelas
                            </Link>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    )
}

export default Navbar
