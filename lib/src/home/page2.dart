import 'package:desktopapp/config_singleton.dart';
import 'package:desktopapp/database/database.dart';
import 'package:desktopapp/database/table/customer/customer.dart';
import 'package:flutter/material.dart';
import 'package:moor/moor.dart' as moor;

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage2> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage2> {
  List<Customer> listCustomer = [];

  Future<void> _getData() async {
    final CustomersProvider _customersProvider = getIt<CustomersProvider>();
    listCustomer.clear();
    var data = await _customersProvider.getAllCustomer();
    listCustomer.addAll(data);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _getData();
  }

  final TextEditingController controllerName = TextEditingController();
  final TextEditingController controllerPhone = TextEditingController();
  final TextEditingController controllerAddress = TextEditingController();
  Future<void> showDialogAddCustomer() async {
    controllerName.text = "";
    controllerPhone.text = "";
    controllerAddress.text = "";
    showDialog(
        context: context,
        builder: (ctxt) => AlertDialog(
              insetPadding: EdgeInsets.zero,
              title: const Text(
                "Add Customer",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              content: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        controller: controllerName,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              )),
                          hintText: "Name",
                          labelText: "Customer name",
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: controllerPhone,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              )),
                          hintText: "Enter customer phone",
                          labelText: "Customer phone",
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: controllerAddress,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              )),
                          hintText: "Enter customer address",
                          labelText: "Customer address",
                        ),
                      ),
                    ]),
              ),
              actions: [
                TextButton(
                    child: const Text("Cancel"),
                    onPressed: () => Navigator.of(context).pop()),
                TextButton(
                    child: const Text("Add"),
                    onPressed: () {
                      Navigator.of(context).pop();
                      addCustomer();
                    })
              ],
            ));
  }

  Future<void> addCustomer() async {
    var name = controllerName.text;
    var phone = controllerPhone.text;
    var adddress = controllerAddress.text;

    final CustomersProvider _customersProvider = getIt<CustomersProvider>();
    await _customersProvider.createCustomer(CustomersCompanion(
        name: moor.Value(name),
        phone: moor.Value(phone),
        address: moor.Value(adddress),
        createDate: moor.Value(DateTime.now())));
    _getData();
  }

  Future<void> updateCustomer(Customer customer) async {
    var _customer = customer.copyWith(
        name: controllerName.text,
        phone: controllerPhone.text,
        address: controllerAddress.text);
    final CustomersProvider _customersProvider = getIt<CustomersProvider>();
    await _customersProvider.updateCustomer(_customer);
    _getData();
  }

  Future<void> showDialogUpdateCustomer(Customer customer) async {
    controllerName.text = customer.name;
    controllerPhone.text = customer.phone;
    controllerAddress.text = customer.address;
    showDialog(
        context: context,
        builder: (ctxt) => AlertDialog(
              insetPadding: EdgeInsets.zero,
              title: const Text(
                "Update Customer",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              content: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        controller: controllerName,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              )),
                          hintText: "Name",
                          labelText: "Customer name",
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: controllerPhone,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              )),
                          hintText: "Enter customer phone",
                          labelText: "Customer phone",
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: controllerAddress,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              )),
                          hintText: "Enter customer address",
                          labelText: "Customer address",
                        ),
                      ),
                    ]),
              ),
              actions: [
                TextButton(
                    child: const Text("Cancel"),
                    onPressed: () => Navigator.of(context).pop()),
                TextButton(
                    child: const Text("Update"),
                    onPressed: () {
                      Navigator.of(context).pop();
                      updateCustomer(customer);
                    })
              ],
            ));
  }

  Future<void> removeCustomer(Customer customer) async {
    final CustomersProvider _customersProvider = getIt<CustomersProvider>();
    _customersProvider.deleteCustomer(customer);
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          buildHeader(),
          buildContent(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showDialogAddCustomer,
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget buildContent() {
    return Expanded(
      child: ListView.builder(
          itemCount: listCustomer.length,
          shrinkWrap: true,
          itemBuilder: (context, index) => Container(
                child: buildListItem(listCustomer[index]),
              )),
    );
  }

  Widget buildListItem(Customer customer) {
    return Container(
      constraints: const BoxConstraints(minHeight: 40),
      decoration: const BoxDecoration(
          color: Colors.transparent,
          border: Border(bottom: BorderSide(color: Colors.grey, width: 1))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: buildTextItem(customer.id.toString(),
                alignment: Alignment.center),
          ),
          Flexible(
            flex: 3,
            child: buildTextItem(customer.name.toString()),
          ),
          Flexible(
            flex: 2,
            child: buildTextItem(customer.phone),
          ),
          Flexible(
            flex: 4,
            child: buildTextItem(customer.address),
          ),
          Flexible(
            flex: 2,
            child: buildControl(customer),
          ),
        ],
      ),
    );
  }

  Widget buildControl(Customer customer) {
    return Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  showDialogUpdateCustomer(customer);
                },
                icon: const Icon(Icons.edit)),
            IconButton(
                onPressed: () {
                  removeCustomer(customer);
                },
                icon: const Icon(Icons.delete)),
          ],
        ));
  }

  Widget buildHeader() {
    return Container(
      height: 50,
      color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: buildTitle("ID", alignment: Alignment.center),
          ),
          Flexible(
            flex: 3,
            child: buildTitle("Name"),
          ),
          Flexible(
            flex: 2,
            child: buildTitle("Phone"),
          ),
          Flexible(
            flex: 4,
            child: buildTitle("Address"),
          ),
          Flexible(
            flex: 2,
            child: buildTitle(""),
          ),
        ],
      ),
    );
  }

  Widget buildTitle(String text, {AlignmentGeometry? alignment}) {
    return Container(
      alignment: alignment ?? Alignment.centerLeft,
      child: Text(text,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }

  Widget buildTextItem(String text, {AlignmentGeometry? alignment}) {
    return Container(
      alignment: alignment ?? Alignment.centerLeft,
      child: Text(text,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
    );
  }
}
