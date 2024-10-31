use tokio::fs::File;
use tokio::io::AsyncReadExt;


#[tokio::main]
async fn main() {
    let mut file_content = String::new();
    File::open("/home/matthias/testnewline").await.unwrap().read_to_string(&mut file_content).await.unwrap();
    println!("/{}/", file_content);
}