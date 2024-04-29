import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
    Container(
     
      child: TextField(
        decoration: InputDecoration(
        
          contentPadding: EdgeInsets.all(8),
           filled: true,
          fillColor: Colors.grey[180],
          hintText: 'Search what you need...',
          // border: InputBorder.none,
          labelText: 'Search',
           border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10), 
      borderSide: BorderSide(
        color: Colors.red, 
        width: 5, 
      ),

    ),
     focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: Color(0xFF6759FF), // Color when focused
        width: 2, // Width when focused
      ),
    ),
          suffixIcon: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
                color: Color(0xFF6759FF),
            ),
       
            child: Icon(Icons.search,color: Colors.white,),),
        ),
      ),
    );
    // return Container(
    //   decoration:  BoxDecoration(
    //   borderRadius: BorderRadius.circular(10), 
    //     color: Colors.grey[250],
    //   ),
    //   child: TextField(
        
    //     //  controller: _controller,
    //     onChanged: (value) {},
    //     decoration: InputDecoration(
    //       filled: true,
    //       fillColor: Colors.grey[250],
    //       hintText: 'Search what you need...',
    //       border: InputBorder.none,
    //       suffixIcon: Container(
    //         padding: const EdgeInsets.all(5),
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(10),
    //           color: Colors.indigo,
    //         ),
    //         child: IconButton(
    //           color: Colors.white,
    //           icon: const Icon(Icons.search),
    //           onPressed: () {},
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}