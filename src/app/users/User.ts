export class User {
    gender: String
    name: {
        title: String,
        first: string,
        last: String
    }
    location:
        {
            street: { number: number, name: String },
            city: String,
            state: String,
            country: String,
            postcode: number,
            coordinates: { latitude: Float32Array, longitude: Float32Array },
            timezone: { offset: String, description: String }
        }
    email: String
    login: { uuid: String, username: String, password: String, salt: String, md5: String, sha1: String, sha256: String }
    dob: { date: Date, age: number }
    registered: { date: Date, age: number }
    phone: String
    cell: String
    id: { name: String, value: String }
    picture: { large: String, medium: String, thumbnail: String }
    nat: String

}


export class Result {
    results: User[]
    info: {
        seed: String,
        results: number,
        page: number,
        version: String
    }
}






