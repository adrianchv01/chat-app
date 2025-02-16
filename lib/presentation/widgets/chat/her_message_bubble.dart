import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {

    //se refiere a que encuente el tema de la app
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola', style: TextStyle(color: Colors.white),),
          ),
          
        ),
        SizedBox(height: 10),
        _bubbleImage(),
        SizedBox(height: 10)
      ],
    );
  }
}

class _bubbleImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        'https://yesno.wtf/assets/yes/8-2f93962e2ab24427df8589131da01a4d.gif',
        width: size.width * 0.7,
        height: 150,
        //Este widget adapta la medida a la imagen que le hemos dado
        fit: BoxFit.cover,
        //Un builder es algo que se va a contruir en tiempo de ejecucion
       loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;

            return Container(
              width: size.width * 0.7,
              height: 150,
              padding: const EdgeInsets.symmetric( horizontal: 10, vertical: 5),
              child: CircularProgressIndicator(
                strokeWidth: 10.0,
              ),
            );
          },
        ));
      
  }
}