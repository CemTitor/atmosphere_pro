class TextStrings {
  TextStrings._();
  static TextStrings _instance = TextStrings._();
  factory TextStrings() => _instance;

  // home screen texts
  // String homeFileTransferItsSafe = 'File transfer.\nIt’s safe!';
  // String homeHassleFree = 'Hassle free.\n';
  // String homeWeWillSetupAccount = 'We will set up your account right away.';
  String homeDescriptionMain = '100% encrypted file transfer';
  String homeDescriptionSub = 'From anywhere to everywhere!';
  String appName = '@mosphere pro';
  String copyRight = '© 2021 The @ Company';

  // onboarding flow texts
  String saveKeyTitle = 'Save your Private Key';
  String importantTitle = 'IMPORTANT!';
  String saveKeyDescription =
      "Please save your private key. For security reasons, it's highly recommended to save it in GDrive/iCloudDrive.";
  String buttonSave = 'SAVE';
  String buttonContinue = 'CONTINUE';

  // welcome screen texts
  String welcomeUser(String userName) => 'Welcome\n $userName';
  String welcomeRecipient = 'Select a recipient and start sending them files.';
  String welcomeSendFilesTo = 'Send file to';
  String welcomeContactPlaceholder = '@sign';
  String welcomeFilePlaceholder = 'Select file to transfer';
  String welcomeAddFilePlaceholder = 'Add file to transfer';

  //sidebar menu texts
  String sidebarContact = 'Contacts';
  String sidebarTransferHistory = 'Transfer History';
  String sidebarBlockedUser = 'Blocked @Signs';
  String sidebarMyFiles = 'My Files';
  String sidebarTrustedSenders = 'Trusted Senders';
  String sidebarMyGroups = 'My Groups';
  String sidebarBackupKey = 'Backup your keys';
  String sidebarTermsAndConditions = 'Terms and Conditions';
  String sidebarPrivacyPolicy = "Privacy policy";
  String sidebarFaqs = 'FAQ';
  String sidebarAutoAcceptFile = 'Auto Accept Files';
  String sidebarEnablingMessage =
      'Enabling this will auto accept all the files sent by your contacts.';
  String sidebarSwitchOut = 'Switch @sign';
  String sidebarDeleteAtsign = 'Delete @sign';

  //FAQs texts
  String faqs = 'FAQ';

  //Contact texts
  String searchContact = 'Search Contact';
  String addContactSearch = 'Search @sign';
  String contactSearchResults = 'Search Results';
  String addContact = 'Add Contact';
  String addtoContact = 'Add to Contact';
  // buttons text
  String buttonStart = 'Start';
  String buttonSend = 'Send';
  String buttonClose = 'Close';

  String accept = 'Accept';
  String reject = 'Reject';
  String upload = 'Upload QR code image';
  String uploadKey = 'Upload key file';
  String buttonCancel = 'Cancel';
  String buttonDelete = 'DELETE';
  String buttonDismiss = 'DISMISS';

  //history screen texts
  String sent = 'Sent';
  String received = 'Received';

  String showDetails = 'Show Details';
  String hideDetails = 'Hide Details';

  String seeFiles = 'See Files';
  String hideFiles = 'Hide Files';

  //receive files texts
  String blockUser = 'Block User';
  String receiverNotification = 'Receivers Notification';

  //add contact texts
  String addContactHeading =
      'Are you sure you want to add the user to your contact list?';
  String yes = 'Yes';
  String no = 'No';
  String add = 'Add';
  String done = 'Done';
  //my files
  String myFiles = 'My Files';
  String recents = 'Recents';
  String photos = 'Photos';
  String videos = 'Videos';
  String audio = 'Audio';
  String apk = 'APK';
  String documents = 'Documents';

  // trusted sender screens
  String trustedSenders = 'Trusted Senders';
  String selectperson = 'Select Person';
  String noTrustedSenders = 'No Trusted Senders!';
  String addTrustedSender = 'Would you like to add people?';
  String removeTrustedSender =
      "Are you sure you want to remove from Trusted senders' list?";
  // my groups
  String groups = 'Groups';
  String noGroups = 'No Groups';
  String newGroup = 'New Group';
  String addGroups = 'Would you like to create a group';
  String create = 'Create';
  String groupName = 'Group Name';
  String enterGroupName = 'Enter group name';
  String removeGroup = 'Are you sure you want to remove from group ?';
  String changeGroupPhoto = 'Change Group Photo';
  String removeGroupPhoto = 'Remove Group Photo';

  // terms and conditions texts
  String termsAppBar = 'Terms and Conditions';
  String termsAndConditions =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n\n Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \n\n Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';

  // scan qr texts
  String scanQrTitle = 'Scan QR Code';
  String scanQrMessage = 'Just scan the QR code displayed at www.atsign.com';
  String scanQrFooter = 'Don’t have an @sign? Get now.';
  String websiteTitle = 'Atsign';

  //error texts
  String errorOccured = 'Some Error occured';

  // File choice dialog texts
  String fileChoiceQuestion = 'What would you like to send?';
  String choice1 = 'Photos and Videos ';
  String choice2 = 'Other files';

  // history no file to open
  String noFileFound = 'Sorry, file not found';

  List<String> contactFields = [
    'firstname.persona',
    'lastname.persona',
    'image.persona',
  ];

  String unknownAtsign(String atSign) =>
      '$atSign is not found. Please check and try again.';
  String atsignExists(String atSign) => '$atSign already exists';
  String emptyAtsign = 'Please type in an atsign';

  // sort strings
  static const String SORT_NAME = 'Sort By Name';
  static const String SORT_DATE = 'Sort By Date';
  static const String SORT_SIZE = 'Sort By Size';

  // Flushbar messages
  String receivingFile = 'Receiving file';
  String sendingFile = 'Sending file';
  String fileReceived = 'File received';
  String fileSent = 'File sent';

  static final String resetButton = 'Reset';
  static const String resetDescription =
      'This will remove the selected @sign and its details from this app only.';
  static const String noAtsignToReset = 'No @signs are paired to reset. ';
  static const String resetErrorText =
      'Please select atleast one @sign to reset';
  static const String resetWarningText =
      'Warning: This action cannot be undone';

  static const uploaded = 'Uploaded';
}
