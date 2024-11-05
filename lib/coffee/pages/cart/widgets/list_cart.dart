import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:navigator_pages/coffee/apps/configs/app_color.dart';
import 'package:navigator_pages/coffee/apps/routers/routers_name.dart';

class ListCart extends StatelessWidget {
  const ListCart({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 10,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 10,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return Slidable(
          key: const ValueKey(0),
          startActionPane: ActionPane(
            motion: const ScrollMotion(),
            dismissible: DismissiblePane(onDismissed: () {}),
            children: [
              SlidableAction(
                onPressed: (_) {},
                backgroundColor: const Color(0xFFFE4A49),
                foregroundColor: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
                icon: Icons.delete,
                label: 'Delete',
              ),
            ],
          ),
          child: AspectRatio(
            aspectRatio: 3 / 1,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, RoutersName.detailsPage);
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.black38,
                    width: 2,
                  ),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.check_circle,
                      color: AppColor.primary,
                    ),
                    Image.asset('assets/images/titlecoffee.png'),
                    const Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cappucinno with chocolate',
                            maxLines: 2,
                            style: TextStyle(fontSize: 18),
                          ),
                          Expanded(
                            child: Text(
                              'US \$10.00',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Text(
                                  'Delivery fee US \$50',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: AppColor.deleteButton),
                                  maxLines: 2,
                                ),
                                Spacer(),
                                Icon(
                                  Icons.remove_circle,
                                  color: AppColor.splash,
                                ),
                                Text('1'),
                                Icon(
                                  Icons.add_circle,
                                  color: AppColor.splash,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
