# Let's create an XML file named q3.xml with the student record as shown in the provided image.

xml_content = '''<?xml version="1.0" encoding="UTF-8"?>
<studentRecord>
    <student id="1231234" lastName="Smith" firstName="John">
        <subject code="MATH101">
            <creditPoint>4</creditPoint>
            <mark>85</mark>
            <grade>A</grade>
        </subject>
        <subject code="ECON111">
            <creditPoint>5</creditPoint>
            <mark>70</mark>
            <grade>B</grade>
        </subject>
        <subject code="CS100">
            <creditPoint>5</creditPoint>
            <mark>80</mark>
            <grade>A</grade>
        </subject>
        <subject code="LAW121">
            <creditPoint>6</creditPoint>
            <mark>75</mark>
            <grade>B</grade>
        </subject>
    </student>
</studentRecord>
'''

# Save the content to a file named q3.xml
path = 'q3.xml'
with open(path, 'w') as file:
    file.write(xml_content)

path