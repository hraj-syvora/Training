//Second largest
function secondLargest(array) {
    // Write your code here
    let maxi=array[0],smaxi=-1;
    let size = array.length;
    for(var i=1;i<size;i++)
      {
        if(array[i]>maxi){
          smaxi=maxi;
          maxi=array[i];
        }else if(array[i]<maxi)
          {
            if(smaxi==-1 || smaxi < array[i]){
              smaxi=array[i];
            }
          }
      }
    return smaxi;
  }
// Calculate Frequency 
function calculateFrequency(string) {
    const arr=new Array(26).fill(0);
    let len=string.length;
    //console.log(len);
    const ans={};
    for(let i=0;i<len;i++)
    {
        let ind=string.charCodeAt(i)- 97;
        if(ind>=0 && ind<=25)
        {
        arr[ind]+=1;
        ans[string[i]] = arr[ind];
        }
    }

    
 return ans;
}
// Flatten object
function flatten(unflatObject) {
    // Write your code here
    let ans={};
    for(let key in unflatObject)
      {
        if(typeof unflatObject[key] === 'object'){
        helper(key,unflatObject[key],ans);
        }else{
          ans[key]=unflatObject[key];
        }
      }
  
    return ans;
  }
  
  function helper(prevString,obj,ans){
    for(let key in obj){
     if(typeof obj[key] === 'object')
      {
        //console.log(`^^^^^^${prevString}`)
        helper(`${prevString}.`+ `${key}`,obj[key],ans);
      }else{
        ans[`${prevString}.`+`${key}`]=obj[key];
      }
    }
    return ans;
  }
// unflatten object
function unflatten(flatObject) {
    // Write your code here
    const ans={};

    for(let key in flatObject)
    {
        const value = flatObject[key];
        const keyOriginal = key.split('.');

        let current = ans;
        for(let i=0;i<keyOriginal.length;i++){
            const part=keyOriginal[i];

            if(i==keyOriginal.length-1){
                current[part]=value;
            }else{
                const next = keyOriginal[i+1];
                const isArray= !isNaN(next);

                if(!current[part]){
                  current[part]=isArray ? []:{};
                }
                current = current[part];
            }

        }
    }
    return ans;
  }
