package org.example.dealership.service;

import org.example.dealership.model.Person;
import org.example.dealership.repository.PersonRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PersonService {

    private final PersonRepository personRepository;

    public PersonService(PersonRepository personRepository) {
        this.personRepository = personRepository;
    }

    public List<Person> findAll() {
        return personRepository.findAll();
    }

    public Person findById(Integer id) {
        return personRepository.findById(id).orElse(null);
    }

    public Person create(Person person) {
        return personRepository.save(person);
    }

}
