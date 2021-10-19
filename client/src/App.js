import logo from './logo.svg';
import './App.css';
import {useState} from "react";
import Axios from "axios";
function App() {

  const [employeeList, setEmployeeList] = useState([]);
  const [name, setName] = useState("");
  const [age, setAge] = useState(0);
  const [country, setCountry] = useState("");
  const [wage, setWage] = useState(0);

  const addEmployee = () =>{
    Axios.post('http://localhost:3001/create', {
        name: name,
        age: age,
        country: country,
        wage: wage
    }).then(() => {
        console.log("sukces");
    });
  };



  return (
    <div className="App">
        <h1>CRUD POGCZAMP</h1>
      <div className="form-wrapper">
      <label htmlFor="">Imie:</label>
      <input type="text" onChange={(event) => {
          setName(event.target.value);
        }}
      />

      <label htmlFor="">Wiek:</label>
      <input type="number" onChange={(event) => {
          setAge(event.target.value);
      }}/>

      <label htmlFor="">Kraj zamieszkania:</label>
      <input type="text" onChange={(event) => {
          setCountry(event.target.value);
      }}/>

      <label htmlFor="">Wynagrodzenie:</label>
      <input type="number" onChange={(event) => {
          setWage(event.target.value);
      }}/>
        <button onClick={addEmployee}>Dodaj pracownika </button>
      </div>

    </div>
  );
}

export default App;
