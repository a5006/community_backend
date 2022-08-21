export declare type User = any;
export declare class UsersService {
    private readonly users;
    findOne(username: string): Promise<User | undefined>;
    findAll(): Promise<{
        userId: number;
        username: string;
        password: string;
    }[]>;
}
