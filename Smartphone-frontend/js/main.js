const smartphoneCatalog = Vue.createApp({
    created() {
        // Fetch the list of phones when the app is created
        fetch('http://localhost/Smartphone-api/public/phones')
            .then(response => {
                if (!response.ok) throw new Error('Network response was not ok');
                return response.json();
            })
            .then(data => {
                this.phonesData = data;
            })
            .catch(error => {
                console.error('Error fetching phones:', error);
                this.error = "There was a problem fetching the smartphones data.";
            });
    },
    data() {
        return {
            phonesData: [],              // Holds the list of phones
            selectedPhoneDetails: null, 
            selectedPhoneID: null, // Holds details of the selected phone
            error: null                  // Holds error messages
        };
    },
    methods: {
        getPhoneDetails(phoneID) {
            this.selectedPhoneID = phoneID; 
            fetch(`http://localhost/Smartphone-api/public/phones/${phoneID}`)
                .then(response => {
                    if (!response.ok) throw new Error('Network response was not ok');
                    return response.json();
                })
                .then(data => {
                    // Assuming the API returns the phone details directly
                    // Adjust this according to the actual structure of your API response
                    this.selectedPhoneDetails = data.details;
                })
                .catch(error => {
                    console.error('Error fetching phone details:', error);
                    this.error = "There was a problem fetching the details for this smartphone.";
                    this.selectedPhoneDetails = null; // Clear previous details on error
                });
        }
    }
}).mount('#app');
