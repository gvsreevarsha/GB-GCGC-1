import React, { Component } from "react";
import { Card, Table } from "react-bootstrap";
import Footer from "./Footer";
import Axios from 'axios';
class Assess extends Component {
  constructor(props){
    super(props);
    this.state={
      train:[],
      year:"2021"
      }
  }

  componentDidMount(){
    Axios.get("http://localhost:80/Admin-backend/Assess.php?id="+this.props.match.params.id)
    .then(response=>{
      this.setState({
        train:response.data,
      })
      console.log(this.state.train[1])
    })
    .catch(err=>console.log(err));
  }
  render() {
    return (
      <div>
        <Card>
          <Card.Body>
            <Card.Title>
              <h5 align="center">Assessment</h5>
            </Card.Title>
            &nbsp;
            <div>
              <Table size="sm" responsive striped>
                <thead className="p-3" style={{backgroundColor:'#2A324B',color:'white',fontSize:'24px'}}>
                  <tr>
                    <th>S.No</th>
                    <th>Roll No</th>
                    <th align="left">Name</th>
                    <th>Score</th>
                  </tr>
                </thead>
                <tbody>
                    {this.state.train.map((item =>
                      <tr>
                        <td>{this.state.train.indexOf(item)+1}</td>
                        <td>{item.id}</td>
                        <td align="left">{item.name}</td>
                        <td>{item.score}</td>
                        </tr>
                        ))}
                </tbody>
              </Table>
            </div>
          </Card.Body>
        </Card>
      </div>
    );
  }
}
export default Assess;