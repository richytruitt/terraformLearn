mkdir zip_dirs
cp -R lambda_package/ lambda_package_zip/
pip install -r lambda_package/requirements.txt -t lambda_package_zip/
cd lambda_package_zip/
zip -r ../zip_dirs/lambda_function_payload.zip .
cd .. 
rm -rf lambda_package_zip