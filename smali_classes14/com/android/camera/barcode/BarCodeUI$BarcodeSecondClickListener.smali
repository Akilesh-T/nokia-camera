.class Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;
.super Ljava/lang/Object;
.source "BarCodeUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/barcode/BarCodeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BarcodeSecondClickListener"
.end annotation


# instance fields
.field private barcode:Lcom/google/android/gms/vision/barcode/Barcode;

.field final synthetic this$0:Lcom/android/camera/barcode/BarCodeUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/barcode/BarCodeUI;Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 0
    .param p2, "barcode"    # Lcom/google/android/gms/vision/barcode/Barcode;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p2, p0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    .line 356
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 360
    const-string v9, ""

    .line 361
    .local v9, "lowerCaseString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    iget v14, v14, Lcom/google/android/gms/vision/barcode/Barcode;->valueFormat:I

    packed-switch v14, :pswitch_data_0

    .line 419
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-static {v14}, Lcom/android/camera/barcode/BarCodeUI;->access$800(Lcom/android/camera/barcode/BarCodeUI;)Landroid/app/AlertDialog;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-static {v14}, Lcom/android/camera/barcode/BarCodeUI;->access$800(Lcom/android/camera/barcode/BarCodeUI;)Landroid/app/AlertDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 420
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-static {v14}, Lcom/android/camera/barcode/BarCodeUI;->access$800(Lcom/android/camera/barcode/BarCodeUI;)Landroid/app/AlertDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog;->dismiss()V

    .line 422
    :cond_0
    return-void

    .line 363
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-static {v14}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "clipboard"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    .line 364
    .local v3, "cmURL":Landroid/content/ClipboardManager;
    const-string v14, "Label"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    iget-object v15, v15, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    invoke-static {v14, v15}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v12

    .line 365
    .local v12, "mClipDataURL":Landroid/content/ClipData;
    invoke-virtual {v3, v12}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-static {v14}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-static {v15}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f08004f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 371
    .end local v3    # "cmURL":Landroid/content/ClipboardManager;
    .end local v12    # "mClipDataURL":Landroid/content/ClipData;
    :pswitch_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 372
    .local v6, "intentText":Landroid/content/Intent;
    const-string v14, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v6, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const-string v14, "query"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    iget-object v15, v15, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-static {v14}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 377
    .end local v6    # "intentText":Landroid/content/Intent;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-static {v14}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "clipboard"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 378
    .local v2, "cmISBN":Landroid/content/ClipboardManager;
    const-string v14, "Label"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    iget-object v15, v15, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    invoke-static {v14, v15}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v11

    .line 379
    .local v11, "mClipDataISBN":Landroid/content/ClipData;
    invoke-virtual {v2, v11}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-static {v14}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-static {v15}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f08004f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 383
    .end local v2    # "cmISBN":Landroid/content/ClipboardManager;
    .end local v11    # "mClipDataISBN":Landroid/content/ClipData;
    :pswitch_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "smsto:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    iget-object v15, v15, Lcom/google/android/gms/vision/barcode/Barcode;->phone:Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    iget-object v15, v15, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->number:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 384
    .local v13, "uri":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    invoke-direct {v5, v14, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 385
    .local v5, "intentSms":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-static {v14}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v14

    invoke-virtual {v14, v5}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 388
    .end local v5    # "intentSms":Landroid/content/Intent;
    .end local v13    # "uri":Landroid/net/Uri;
    :pswitch_5
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 389
    .local v4, "intentPhone":Landroid/content/Intent;
    const-string v14, "android.intent.action.DIAL"

    invoke-virtual {v4, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tel:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    iget-object v15, v15, Lcom/google/android/gms/vision/barcode/Barcode;->sms:Lcom/google/android/gms/vision/barcode/Barcode$Sms;

    iget-object v15, v15, Lcom/google/android/gms/vision/barcode/Barcode$Sms;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 391
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-static {v14}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 398
    .end local v4    # "intentPhone":Landroid/content/Intent;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-static {v15}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode;->email:Lcom/google/android/gms/vision/barcode/Barcode$Email;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/android/camera/barcode/BarCodeUI;->access$900(Lcom/android/camera/barcode/BarCodeUI;Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode$Email;)V

    goto/16 :goto_0

    .line 407
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->barcode:Lcom/google/android/gms/vision/barcode/Barcode;

    iget-object v7, v14, Lcom/google/android/gms/vision/barcode/Barcode;->driverLicense:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    .line 408
    .local v7, "license":Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    const v15, 0x7f080025

    invoke-static {v14, v15}, Lcom/android/camera/barcode/BarCodeUI;->access$700(Lcom/android/camera/barcode/BarCodeUI;I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xe

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->licenseNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    iget-object v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressCity:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x2

    iget-object v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressState:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x3

    iget-object v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressStreet:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x4

    iget-object v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressZip:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x5

    iget-object v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->birthDate:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x6

    iget-object v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->documentType:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x7

    iget-object v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->expiryDate:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x8

    iget-object v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->firstName:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x9

    iget-object v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->middleName:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0xa

    iget-object v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->lastName:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0xb

    iget-object v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->gender:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0xc

    iget-object v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->issueDate:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0xd

    iget-object v0, v7, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->issuingCountry:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 411
    .local v8, "licenseText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-static {v14}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "clipboard"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 412
    .local v1, "cmDL":Landroid/content/ClipboardManager;
    const-string v14, "Label"

    invoke-static {v14, v8}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v10

    .line 413
    .local v10, "mClipDataDL":Landroid/content/ClipData;
    invoke-virtual {v1, v10}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-static {v14}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-static {v15}, Lcom/android/camera/barcode/BarCodeUI;->access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f08004f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
