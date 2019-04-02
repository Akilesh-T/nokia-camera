.class public Lcom/android/camera/scenerecognition/BarCodeAction;
.super Ljava/lang/Object;
.source "BarCodeAction.java"


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAppController:Lcom/android/camera/app/AppController;

.field private mIsImportCalendar:Z

.field private mIsImportContact:Z

.field private mIsImportEmail:Z

.field private wifiAdmin:Lcom/android/camera/barcode/WifiAdmin;


# direct methods
.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 1
    .param p1, "appController"    # Lcom/android/camera/app/AppController;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mAppController:Lcom/android/camera/app/AppController;

    .line 51
    iget-object v0, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    .line 52
    return-void
.end method

.method private BarCodeImportEmail(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 637
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mIsImportEmail:Z

    .line 638
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 639
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    const-string v1, "phone_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 644
    iget-object v1, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 645
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mIsImportEmail:Z

    .line 647
    return-void
.end method

.method private BarcodeImpoetCalendar(Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 9
    .param p1, "barcode"    # Lcom/google/android/gms/vision/barcode/Barcode;

    .prologue
    const/4 v8, 0x0

    .line 572
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mIsImportCalendar:Z

    .line 573
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 574
    .local v0, "beginTime":Landroid/icu/util/Calendar;
    iget-object v2, p1, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v2, v2, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->start:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iget v1, v2, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->year:I

    iget-object v2, p1, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v2, v2, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->start:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iget v2, v2, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->month:I

    iget-object v3, p1, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v3, v3, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->start:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iget v3, v3, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->day:I

    iget-object v4, p1, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v4, v4, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->start:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iget v4, v4, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->hours:I

    iget-object v5, p1, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v5, v5, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->start:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iget v5, v5, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->minutes:I

    invoke-virtual/range {v0 .. v5}, Landroid/icu/util/Calendar;->set(IIIII)V

    .line 575
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v1

    .line 576
    .local v1, "endTime":Landroid/icu/util/Calendar;
    iget-object v2, p1, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v2, v2, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->end:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iget v2, v2, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->year:I

    iget-object v3, p1, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v3, v3, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->end:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iget v3, v3, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->month:I

    iget-object v4, p1, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v4, v4, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->end:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iget v4, v4, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->day:I

    iget-object v5, p1, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v5, v5, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->end:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iget v5, v5, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->hours:I

    iget-object v6, p1, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v6, v6, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->end:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iget v6, v6, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->minutes:I

    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/Calendar;->set(IIIII)V

    .line 577
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 578
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "beginTime"

    .line 579
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "endTime"

    .line 580
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "title"

    iget-object v4, p1, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v4, v4, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->summary:Ljava/lang/String;

    .line 581
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "description"

    iget-object v4, p1, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v4, v4, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->description:Ljava/lang/String;

    .line 582
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "eventLocation"

    iget-object v4, p1, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v4, v4, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->location:Ljava/lang/String;

    .line 583
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "availability"

    .line 584
    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .line 586
    .local v7, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 587
    iput-boolean v8, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mIsImportCalendar:Z

    .line 588
    return-void
.end method

.method private BarcodeImportContacts(Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 11
    .param p1, "barcode"    # Lcom/google/android/gms/vision/barcode/Barcode;

    .prologue
    const/4 v7, 0x0

    .line 592
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mIsImportContact:Z

    .line 593
    iget-object v0, p1, Lcom/google/android/gms/vision/barcode/Barcode;->contactInfo:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    .line 594
    .local v0, "contactInfo":Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 595
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    iget-object v6, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    iget-object v6, v6, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->formattedName:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 598
    const-string v6, "name"

    iget-object v8, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    iget-object v8, v8, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->formattedName:Ljava/lang/String;

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    :cond_0
    iget-object v6, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    iget-object v6, v6, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->last:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 601
    const-string v6, "phonetic_name"

    iget-object v8, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    iget-object v8, v8, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->last:Ljava/lang/String;

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    :cond_1
    iget-object v5, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->phones:[Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    .line 604
    .local v5, "phoneList":[Lcom/google/android/gms/vision/barcode/Barcode$Phone;
    if-eqz v5, :cond_2

    .line 605
    array-length v8, v5

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v4, v5, v6

    .line 606
    .local v4, "phoneInfo":Lcom/google/android/gms/vision/barcode/Barcode$Phone;
    const-string v9, "phone"

    iget-object v10, v4, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->number:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 610
    .end local v4    # "phoneInfo":Lcom/google/android/gms/vision/barcode/Barcode$Phone;
    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->emails:[Lcom/google/android/gms/vision/barcode/Barcode$Email;

    .line 611
    .local v2, "emailList":[Lcom/google/android/gms/vision/barcode/Barcode$Email;
    if-eqz v2, :cond_3

    .line 612
    array-length v8, v2

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v1, v2, v6

    .line 613
    .local v1, "email":Lcom/google/android/gms/vision/barcode/Barcode$Email;
    const-string v9, "email"

    iget-object v10, v1, Lcom/google/android/gms/vision/barcode/Barcode$Email;->address:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 617
    .end local v1    # "email":Lcom/google/android/gms/vision/barcode/Barcode$Email;
    :cond_3
    const-string v6, "phone_type"

    const/4 v8, 0x3

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 618
    iget-object v6, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6, v3}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 620
    iput-boolean v7, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mIsImportContact:Z

    .line 621
    return-void
.end method

.method private BarcodeImportContacts(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 626
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mIsImportContact:Z

    .line 627
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 628
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    const-string v1, "phone_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 631
    iget-object v1, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 632
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mIsImportContact:Z

    .line 633
    return-void
.end method

.method private getResourceString(I)Ljava/lang/String;
    .locals 2
    .param p1, "stringId"    # I

    .prologue
    .line 554
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 557
    :goto_0
    return-object v1

    .line 555
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, ""

    goto :goto_0
.end method

.method private showTextActivity(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "showSearch"    # Z

    .prologue
    .line 562
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 563
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "show_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    const-string v1, "show_search_button"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 565
    iget-object v1, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    const-class v2, Lcom/android/camera/barcode/BarcodeTextActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 566
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 567
    iget-object v1, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 568
    return-void
.end method


# virtual methods
.method public sendBarCodeMainAction(Lcom/android/camera/barcode/BarCodeResult;)V
    .locals 40
    .param p1, "data"    # Lcom/android/camera/barcode/BarCodeResult;

    .prologue
    .line 147
    if-nez p1, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/barcode/BarCodeResult;->getGoogleBarCode()Lcom/google/android/gms/vision/barcode/Barcode;

    move-result-object v14

    .line 149
    .local v14, "googleResult":Lcom/google/android/gms/vision/barcode/Barcode;
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/barcode/BarCodeResult;->getZxingResult()Lcom/google/zxing/Result;

    move-result-object v34

    .line 150
    .local v34, "zxingResult":Lcom/google/zxing/Result;
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/barcode/BarCodeResult;->getType()Lcom/android/camera/barcode/BarCodeResult$ResultType;

    move-result-object v29

    .line 151
    .local v29, "resultType":Lcom/android/camera/barcode/BarCodeResult$ResultType;
    if-eqz v29, :cond_0

    .line 154
    const-string v24, ""

    .line 155
    .local v24, "lowerCaseString":Ljava/lang/String;
    sget-object v35, Lcom/android/camera/scenerecognition/BarCodeAction$1;->$SwitchMap$com$android$camera$barcode$BarCodeResult$ResultType:[I

    invoke-virtual/range {v29 .. v29}, Lcom/android/camera/barcode/BarCodeResult$ResultType;->ordinal()I

    move-result v36

    aget v35, v35, v36

    packed-switch v35, :pswitch_data_0

    goto :goto_0

    .line 157
    :pswitch_0
    if-eqz v14, :cond_4

    .line 158
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 159
    .local v21, "intentUrl":Landroid/content/Intent;
    iget-object v0, v14, Lcom/google/android/gms/vision/barcode/Barcode;->url:Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;

    move-object/from16 v35, v0

    if-eqz v35, :cond_2

    iget-object v0, v14, Lcom/google/android/gms/vision/barcode/Barcode;->url:Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;->url:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v35

    const-string v36, ""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_2

    .line 160
    const-string v35, "android.intent.action.VIEW"

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v0, v14, Lcom/google/android/gms/vision/barcode/Barcode;->url:Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;->url:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 173
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v5, v14, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    .line 165
    .local v5, "barValue":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v35

    const-string v36, "http"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v35

    const-string v36, "https"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_3

    .line 166
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "http://"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 170
    :goto_2
    const-string v35, "android.intent.action.VIEW"

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 168
    :cond_3
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v36, 0x0

    const-string v37, ":"

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ":"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v36

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_2

    .line 174
    .end local v5    # "barValue":Ljava/lang/String;
    .end local v21    # "intentUrl":Landroid/content/Intent;
    :cond_4
    if-eqz v34, :cond_0

    .line 175
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 176
    .restart local v21    # "intentUrl":Landroid/content/Intent;
    invoke-static/range {v34 .. v34}, Lcom/google/zxing/client/result/URIResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v35

    check-cast v35, Lcom/google/zxing/client/result/URIParsedResult;

    move-object/from16 v32, v35

    check-cast v32, Lcom/google/zxing/client/result/URIParsedResult;

    .line 177
    .local v32, "uriParsedResult":Lcom/google/zxing/client/result/URIParsedResult;
    if-eqz v32, :cond_0

    .line 178
    invoke-virtual/range {v32 .. v32}, Lcom/google/zxing/client/result/URIParsedResult;->getURI()Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_5

    invoke-virtual/range {v32 .. v32}, Lcom/google/zxing/client/result/URIParsedResult;->getURI()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v35

    const-string v36, ""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 179
    const-string v35, "android.intent.action.VIEW"

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-virtual/range {v32 .. v32}, Lcom/google/zxing/client/result/URIParsedResult;->getURI()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 192
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 183
    :cond_5
    invoke-virtual/range {v34 .. v34}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v5

    .line 184
    .restart local v5    # "barValue":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v35

    const-string v36, "http"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v35

    const-string v36, "https"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_6

    .line 185
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "http://"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 189
    :goto_4
    const-string v35, "android.intent.action.VIEW"

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3

    .line 187
    :cond_6
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v36, 0x0

    const-string v37, ":"

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ":"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v36

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_4

    .line 196
    .end local v5    # "barValue":Ljava/lang/String;
    .end local v21    # "intentUrl":Landroid/content/Intent;
    .end local v32    # "uriParsedResult":Lcom/google/zxing/client/result/URIParsedResult;
    :pswitch_1
    if-eqz v14, :cond_7

    .line 197
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v17, "intentGeo":Landroid/content/Intent;
    iget-object v5, v14, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    .line 199
    .restart local v5    # "barValue":Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v36, 0x0

    const-string v37, ":"

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ":"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v36

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 201
    const-string v35, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 204
    .end local v5    # "barValue":Ljava/lang/String;
    .end local v17    # "intentGeo":Landroid/content/Intent;
    :cond_7
    if-eqz v34, :cond_0

    .line 205
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 206
    .restart local v17    # "intentGeo":Landroid/content/Intent;
    invoke-virtual/range {v34 .. v34}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v5

    .line 207
    .restart local v5    # "barValue":Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v36, 0x0

    const-string v37, ":"

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ":"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v36

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 209
    const-string v35, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 216
    .end local v5    # "barValue":Ljava/lang/String;
    .end local v17    # "intentGeo":Landroid/content/Intent;
    :pswitch_2
    if-eqz v14, :cond_8

    .line 217
    iget-object v0, v14, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/camera/scenerecognition/BarCodeAction;->showTextActivity(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 218
    :cond_8
    if-eqz v34, :cond_0

    .line 219
    invoke-virtual/range {v34 .. v34}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/camera/scenerecognition/BarCodeAction;->showTextActivity(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 223
    :pswitch_3
    if-eqz v14, :cond_9

    .line 224
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 225
    .local v18, "intentIsbn":Landroid/content/Intent;
    const-string v35, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v35, "query"

    iget-object v0, v14, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 228
    .end local v18    # "intentIsbn":Landroid/content/Intent;
    :cond_9
    if-eqz v34, :cond_0

    .line 229
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 230
    .restart local v18    # "intentIsbn":Landroid/content/Intent;
    const-string v35, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v35, "query"

    invoke-virtual/range {v34 .. v34}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 236
    .end local v18    # "intentIsbn":Landroid/content/Intent;
    :pswitch_4
    if-eqz v14, :cond_a

    .line 237
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 238
    .local v19, "intentPhone":Landroid/content/Intent;
    iget-object v0, v14, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 239
    const-string v35, "gengqiang"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "ww/lowerCaseString:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v35, "android.intent.action.DIAL"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 243
    .end local v19    # "intentPhone":Landroid/content/Intent;
    :cond_a
    if-eqz v34, :cond_0

    .line 244
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 245
    .restart local v19    # "intentPhone":Landroid/content/Intent;
    invoke-virtual/range {v34 .. v34}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 246
    const-string v35, "gengqiang"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "cn/lowerCaseString:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v35, "android.intent.action.DIAL"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 253
    .end local v19    # "intentPhone":Landroid/content/Intent;
    :pswitch_5
    if-eqz v14, :cond_b

    .line 254
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "smsto:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget-object v0, v14, Lcom/google/android/gms/vision/barcode/Barcode;->sms:Lcom/google/android/gms/vision/barcode/Barcode$Sms;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$Sms;->phoneNumber:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 255
    .local v31, "uri":Landroid/net/Uri;
    new-instance v20, Landroid/content/Intent;

    const-string v35, "android.intent.action.VIEW"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 256
    .local v20, "intentSms":Landroid/content/Intent;
    const-string v35, "sms_body"

    iget-object v0, v14, Lcom/google/android/gms/vision/barcode/Barcode;->sms:Lcom/google/android/gms/vision/barcode/Barcode$Sms;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$Sms;->message:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 258
    .end local v20    # "intentSms":Landroid/content/Intent;
    .end local v31    # "uri":Landroid/net/Uri;
    :cond_b
    if-eqz v34, :cond_0

    .line 259
    invoke-static/range {v34 .. v34}, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v35

    check-cast v35, Lcom/google/zxing/client/result/SMSParsedResult;

    move-object/from16 v30, v35

    check-cast v30, Lcom/google/zxing/client/result/SMSParsedResult;

    .line 260
    .local v30, "smsParsedResult":Lcom/google/zxing/client/result/SMSParsedResult;
    if-nez v30, :cond_c

    .line 261
    invoke-static/range {v34 .. v34}, Lcom/google/zxing/client/result/SMSMMSResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v35

    check-cast v35, Lcom/google/zxing/client/result/SMSParsedResult;

    move-object/from16 v30, v35

    check-cast v30, Lcom/google/zxing/client/result/SMSParsedResult;

    .line 263
    :cond_c
    if-eqz v30, :cond_0

    .line 266
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "smsto:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v30 .. v30}, Lcom/google/zxing/client/result/SMSParsedResult;->getNumbers()[Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    aget-object v36, v36, v37

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 268
    .restart local v31    # "uri":Landroid/net/Uri;
    new-instance v20, Landroid/content/Intent;

    const-string v35, "android.intent.action.VIEW"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 269
    .restart local v20    # "intentSms":Landroid/content/Intent;
    const-string v35, "sms_body"

    invoke-virtual/range {v30 .. v30}, Lcom/google/zxing/client/result/SMSParsedResult;->getBody()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 274
    .end local v20    # "intentSms":Landroid/content/Intent;
    .end local v30    # "smsParsedResult":Lcom/google/zxing/client/result/SMSParsedResult;
    .end local v31    # "uri":Landroid/net/Uri;
    :pswitch_6
    if-eqz v14, :cond_d

    .line 275
    iget-object v8, v14, Lcom/google/android/gms/vision/barcode/Barcode;->email:Lcom/google/android/gms/vision/barcode/Barcode$Email;

    .line 277
    .local v8, "email":Lcom/google/android/gms/vision/barcode/Barcode$Email;
    new-instance v16, Landroid/content/Intent;

    const-string v35, "android.intent.action.SEND"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v16, "intentEmail":Landroid/content/Intent;
    const-string v35, "plain/text"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 281
    .local v28, "reciever":[Ljava/lang/String;
    const/16 v35, 0x0

    iget-object v0, v8, Lcom/google/android/gms/vision/barcode/Barcode$Email;->address:Ljava/lang/String;

    move-object/from16 v36, v0

    aput-object v36, v28, v35

    .line 282
    const-string v35, "android.intent.extra.EMAIL"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string v35, "android.intent.extra.SUBJECT"

    iget-object v0, v8, Lcom/google/android/gms/vision/barcode/Barcode$Email;->subject:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const-string v35, "android.intent.extra.TEXT"

    iget-object v0, v8, Lcom/google/android/gms/vision/barcode/Barcode$Email;->body:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 287
    :catch_0
    move-exception v13

    .line 288
    .local v13, "ex":Landroid/content/ActivityNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v35, v0

    const-string v36, "There are no email applications installed."

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 290
    .end local v8    # "email":Lcom/google/android/gms/vision/barcode/Barcode$Email;
    .end local v13    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v16    # "intentEmail":Landroid/content/Intent;
    .end local v28    # "reciever":[Ljava/lang/String;
    :cond_d
    if-eqz v34, :cond_0

    .line 291
    invoke-static/range {v34 .. v34}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    .line 292
    .local v9, "emailAddressParsedResult":Lcom/google/zxing/client/result/EmailAddressParsedResult;
    if-eqz v9, :cond_0

    .line 295
    new-instance v16, Landroid/content/Intent;

    const-string v35, "android.intent.action.SEND"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .restart local v16    # "intentEmail":Landroid/content/Intent;
    const-string v35, "plain/text"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 299
    .restart local v28    # "reciever":[Ljava/lang/String;
    const/16 v35, 0x0

    invoke-virtual {v9}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getEmailAddress()Ljava/lang/String;

    move-result-object v36

    aput-object v36, v28, v35

    .line 300
    const-string v35, "android.intent.extra.EMAIL"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v35, "android.intent.extra.SUBJECT"

    invoke-virtual {v9}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getSubject()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string v35, "android.intent.extra.TEXT"

    invoke-virtual {v9}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getBody()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 305
    :catch_1
    move-exception v13

    .line 306
    .restart local v13    # "ex":Landroid/content/ActivityNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v35, v0

    const-string v36, "There are no email applications installed."

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 312
    .end local v9    # "emailAddressParsedResult":Lcom/google/zxing/client/result/EmailAddressParsedResult;
    .end local v13    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v16    # "intentEmail":Landroid/content/Intent;
    .end local v28    # "reciever":[Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->wifiAdmin:Lcom/android/camera/barcode/WifiAdmin;

    move-object/from16 v35, v0

    if-nez v35, :cond_e

    .line 313
    new-instance v35, Lcom/android/camera/barcode/WifiAdmin;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Lcom/android/camera/barcode/WifiAdmin;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/scenerecognition/BarCodeAction;->wifiAdmin:Lcom/android/camera/barcode/WifiAdmin;

    .line 315
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->wifiAdmin:Lcom/android/camera/barcode/WifiAdmin;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/camera/barcode/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v35

    if-nez v35, :cond_f

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->wifiAdmin:Lcom/android/camera/barcode/WifiAdmin;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/camera/barcode/WifiAdmin;->openWifi()V

    .line 318
    :cond_f
    if-eqz v14, :cond_12

    .line 319
    const/16 v25, 0x13

    .line 320
    .local v25, "net_type":I
    iget-object v0, v14, Lcom/google/android/gms/vision/barcode/Barcode;->wifi:Lcom/google/android/gms/vision/barcode/Barcode$WiFi;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->encryptionType:I

    move/from16 v35, v0

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_10

    .line 321
    const/16 v25, 0x13

    .line 328
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->wifiAdmin:Lcom/android/camera/barcode/WifiAdmin;

    move-object/from16 v35, v0

    iget-object v0, v14, Lcom/google/android/gms/vision/barcode/Barcode;->wifi:Lcom/google/android/gms/vision/barcode/Barcode$WiFi;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->ssid:Ljava/lang/String;

    move-object/from16 v36, v0

    iget-object v0, v14, Lcom/google/android/gms/vision/barcode/Barcode;->wifi:Lcom/google/android/gms/vision/barcode/Barcode$WiFi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->password:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/barcode/WifiAdmin;->addNetwork(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 322
    :cond_10
    iget-object v0, v14, Lcom/google/android/gms/vision/barcode/Barcode;->wifi:Lcom/google/android/gms/vision/barcode/Barcode$WiFi;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->encryptionType:I

    move/from16 v35, v0

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_11

    .line 323
    const/16 v25, 0x12

    goto :goto_5

    .line 325
    :cond_11
    const/16 v25, 0x11

    goto :goto_5

    .line 331
    .end local v25    # "net_type":I
    :cond_12
    if-eqz v34, :cond_0

    .line 332
    invoke-static/range {v34 .. v34}, Lcom/google/zxing/client/result/WifiResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v33

    check-cast v33, Lcom/google/zxing/client/result/WifiParsedResult;

    .line 333
    .local v33, "wifiParsedResult":Lcom/google/zxing/client/result/WifiParsedResult;
    if-eqz v33, :cond_0

    .line 336
    const/16 v25, 0x13

    .line 337
    .restart local v25    # "net_type":I
    invoke-virtual/range {v33 .. v33}, Lcom/google/zxing/client/result/WifiParsedResult;->getNetworkEncryption()Ljava/lang/String;

    move-result-object v35

    const-string v36, "WPA"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_13

    .line 338
    const/16 v25, 0x13

    .line 345
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->wifiAdmin:Lcom/android/camera/barcode/WifiAdmin;

    move-object/from16 v35, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/zxing/client/result/WifiParsedResult;->getSsid()Ljava/lang/String;

    move-result-object v36

    .line 346
    invoke-virtual/range {v33 .. v33}, Lcom/google/zxing/client/result/WifiParsedResult;->getPassword()Ljava/lang/String;

    move-result-object v37

    .line 345
    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/barcode/WifiAdmin;->addNetwork(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 339
    :cond_13
    invoke-virtual/range {v33 .. v33}, Lcom/google/zxing/client/result/WifiParsedResult;->getNetworkEncryption()Ljava/lang/String;

    move-result-object v35

    const-string v36, "WEP"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_14

    .line 340
    const/16 v25, 0x12

    goto :goto_6

    .line 342
    :cond_14
    const/16 v25, 0x11

    goto :goto_6

    .line 352
    .end local v25    # "net_type":I
    .end local v33    # "wifiParsedResult":Lcom/google/zxing/client/result/WifiParsedResult;
    :pswitch_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mIsImportContact:Z

    move/from16 v35, v0

    if-nez v35, :cond_0

    .line 356
    if-eqz v14, :cond_15

    .line 357
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/camera/scenerecognition/BarCodeAction;->BarcodeImportContacts(Lcom/google/android/gms/vision/barcode/Barcode;)V

    goto/16 :goto_0

    .line 358
    :cond_15
    if-eqz v34, :cond_0

    .line 359
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/scenerecognition/BarCodeAction;->mIsImportContact:Z

    .line 360
    invoke-static/range {v34 .. v34}, Lcom/google/zxing/client/result/VCardResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/client/result/AddressBookParsedResult;

    .line 361
    .local v4, "addressBookParsedResult":Lcom/google/zxing/client/result/AddressBookParsedResult;
    if-eqz v4, :cond_0

    .line 364
    new-instance v15, Landroid/content/Intent;

    const-string v35, "android.intent.action.INSERT"

    move-object/from16 v0, v35

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .local v15, "intent":Landroid/content/Intent;
    const-string v35, "vnd.android.cursor.dir/raw_contact"

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    invoke-virtual {v4}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_16

    .line 369
    const-string v35, "name"

    invoke-virtual {v4}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    aget-object v36, v36, v37

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    :cond_16
    invoke-virtual {v4}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v27

    .line 375
    .local v27, "phoneList":[Ljava/lang/String;
    if-eqz v27, :cond_17

    .line 376
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v36, v0

    const/16 v35, 0x0

    :goto_7
    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_17

    aget-object v26, v27, v35

    .line 377
    .local v26, "phoneInfo":Ljava/lang/String;
    const-string v37, "phone"

    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    add-int/lit8 v35, v35, 0x1

    goto :goto_7

    .line 381
    .end local v26    # "phoneInfo":Ljava/lang/String;
    :cond_17
    invoke-virtual {v4}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v11

    .line 382
    .local v11, "emailList":[Ljava/lang/String;
    if-eqz v11, :cond_18

    .line 383
    array-length v0, v11

    move/from16 v36, v0

    const/16 v35, 0x0

    :goto_8
    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_18

    aget-object v10, v11, v35

    .line 384
    .local v10, "emailInfo":Ljava/lang/String;
    const-string v37, "email"

    move-object/from16 v0, v37

    invoke-virtual {v15, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    add-int/lit8 v35, v35, 0x1

    goto :goto_8

    .line 388
    .end local v10    # "emailInfo":Ljava/lang/String;
    :cond_18
    const-string v35, "phone_type"

    const/16 v36, 0x3

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 391
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/scenerecognition/BarCodeAction;->mIsImportContact:Z

    goto/16 :goto_0

    .line 396
    .end local v4    # "addressBookParsedResult":Lcom/google/zxing/client/result/AddressBookParsedResult;
    .end local v11    # "emailList":[Ljava/lang/String;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v27    # "phoneList":[Ljava/lang/String;
    :pswitch_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mIsImportCalendar:Z

    move/from16 v35, v0

    if-nez v35, :cond_0

    .line 399
    if-eqz v14, :cond_19

    .line 400
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/camera/scenerecognition/BarCodeAction;->BarcodeImpoetCalendar(Lcom/google/android/gms/vision/barcode/Barcode;)V

    goto/16 :goto_0

    .line 401
    :cond_19
    if-eqz v34, :cond_0

    .line 402
    invoke-static/range {v34 .. v34}, Lcom/google/zxing/client/result/VEventResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/client/result/CalendarParsedResult;

    .line 403
    .local v7, "calendarParsedResult":Lcom/google/zxing/client/result/CalendarParsedResult;
    if-eqz v7, :cond_0

    .line 406
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/scenerecognition/BarCodeAction;->mIsImportCalendar:Z

    .line 407
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v6

    .line 408
    .local v6, "beginTime":Landroid/icu/util/Calendar;
    invoke-virtual {v7}, Lcom/google/zxing/client/result/CalendarParsedResult;->getStart()Ljava/util/Date;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 409
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v12

    .line 410
    .local v12, "endTime":Landroid/icu/util/Calendar;
    invoke-virtual {v7}, Lcom/google/zxing/client/result/CalendarParsedResult;->getEnd()Ljava/util/Date;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v12, v0}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 411
    new-instance v35, Landroid/content/Intent;

    const-string v36, "android.intent.action.INSERT"

    invoke-direct/range {v35 .. v36}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v36, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 412
    invoke-virtual/range {v35 .. v36}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v35

    const-string v36, "beginTime"

    .line 413
    invoke-virtual {v6}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v38

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v35

    const-string v36, "endTime"

    .line 414
    invoke-virtual {v12}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v38

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v35

    const-string v36, "title"

    .line 415
    invoke-virtual {v7}, Lcom/google/zxing/client/result/CalendarParsedResult;->getSummary()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v35

    const-string v36, "description"

    .line 416
    invoke-virtual {v7}, Lcom/google/zxing/client/result/CalendarParsedResult;->getDescription()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v35

    const-string v36, "eventLocation"

    .line 417
    invoke-virtual {v7}, Lcom/google/zxing/client/result/CalendarParsedResult;->getLocation()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v35

    const-string v36, "availability"

    const/16 v37, 0x0

    .line 418
    invoke-virtual/range {v35 .. v37}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v15

    .line 420
    .restart local v15    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 421
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/scenerecognition/BarCodeAction;->mIsImportCalendar:Z

    goto/16 :goto_0

    .line 426
    .end local v6    # "beginTime":Landroid/icu/util/Calendar;
    .end local v7    # "calendarParsedResult":Lcom/google/zxing/client/result/CalendarParsedResult;
    .end local v12    # "endTime":Landroid/icu/util/Calendar;
    .end local v15    # "intent":Landroid/content/Intent;
    :pswitch_a
    if-eqz v14, :cond_1a

    .line 427
    iget-object v0, v14, Lcom/google/android/gms/vision/barcode/Barcode;->driverLicense:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    move-object/from16 v22, v0

    .line 428
    .local v22, "license":Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;
    const v35, 0x7f080025

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/camera/scenerecognition/BarCodeAction;->getResourceString(I)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0xe

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->licenseNumber:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v36, v37

    const/16 v37, 0x1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressCity:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v36, v37

    const/16 v37, 0x2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressState:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v36, v37

    const/16 v37, 0x3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressStreet:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v36, v37

    const/16 v37, 0x4

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressZip:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v36, v37

    const/16 v37, 0x5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->birthDate:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v36, v37

    const/16 v37, 0x6

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->documentType:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v36, v37

    const/16 v37, 0x7

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->expiryDate:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v36, v37

    const/16 v37, 0x8

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->firstName:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v36, v37

    const/16 v37, 0x9

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->middleName:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v36, v37

    const/16 v37, 0xa

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->lastName:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v36, v37

    const/16 v37, 0xb

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->gender:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v36, v37

    const/16 v37, 0xc

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->issueDate:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v36, v37

    const/16 v37, 0xd

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->issuingCountry:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 431
    .local v23, "licenseText":Ljava/lang/String;
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/camera/scenerecognition/BarCodeAction;->showTextActivity(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 432
    .end local v22    # "license":Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;
    .end local v23    # "licenseText":Ljava/lang/String;
    :cond_1a
    if-eqz v34, :cond_0

    goto/16 :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public sendBarCodeSecondAction(Lcom/android/camera/barcode/BarCodeResult;)V
    .locals 14
    .param p1, "data"    # Lcom/android/camera/barcode/BarCodeResult;

    .prologue
    const/4 v13, 0x0

    .line 55
    if-nez p1, :cond_1

    .line 144
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/barcode/BarCodeResult;->getGoogleBarCode()Lcom/google/android/gms/vision/barcode/Barcode;

    move-result-object v1

    .line 57
    .local v1, "googleResult":Lcom/google/android/gms/vision/barcode/Barcode;
    invoke-virtual {p1}, Lcom/android/camera/barcode/BarCodeResult;->getZxingResult()Lcom/google/zxing/Result;

    move-result-object v10

    .line 58
    .local v10, "zxingResult":Lcom/google/zxing/Result;
    invoke-virtual {p1}, Lcom/android/camera/barcode/BarCodeResult;->getType()Lcom/android/camera/barcode/BarCodeResult$ResultType;

    move-result-object v6

    .line 59
    .local v6, "resultType":Lcom/android/camera/barcode/BarCodeResult$ResultType;
    if-eqz v6, :cond_0

    .line 62
    const-string v5, ""

    .line 63
    .local v5, "lowerCaseString":Ljava/lang/String;
    sget-object v11, Lcom/android/camera/scenerecognition/BarCodeAction$1;->$SwitchMap$com$android$camera$barcode$BarCodeResult$ResultType:[I

    invoke-virtual {v6}, Lcom/android/camera/barcode/BarCodeResult$ResultType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    goto :goto_0

    .line 69
    :pswitch_1
    if-eqz v1, :cond_2

    .line 70
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v4, "intentText":Landroid/content/Intent;
    const-string v11, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v11, "query"

    iget-object v12, v1, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v11, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v11, v4}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    .end local v4    # "intentText":Landroid/content/Intent;
    :cond_2
    if-eqz v10, :cond_0

    .line 75
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 76
    .restart local v4    # "intentText":Landroid/content/Intent;
    const-string v11, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v11, "query"

    invoke-virtual {v10}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    iget-object v11, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v11, v4}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    .end local v4    # "intentText":Landroid/content/Intent;
    :pswitch_2
    if-eqz v1, :cond_3

    .line 85
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "smsto:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/vision/barcode/Barcode;->phone:Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    iget-object v12, v12, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->number:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 86
    .local v9, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v3, v11, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 87
    .local v3, "intentSms":Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v11, v3}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 88
    .end local v3    # "intentSms":Landroid/content/Intent;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_3
    if-eqz v10, :cond_0

    .line 89
    invoke-static {v10}, Lcom/google/zxing/client/result/TelResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/client/result/TelParsedResult;

    move-object v8, v11

    check-cast v8, Lcom/google/zxing/client/result/TelParsedResult;

    .line 90
    .local v8, "telParsedResult":Lcom/google/zxing/client/result/TelParsedResult;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "smsto:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/google/zxing/client/result/TelParsedResult;->getNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 91
    .restart local v9    # "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v3, v11, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 92
    .restart local v3    # "intentSms":Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v11, v3}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 96
    .end local v3    # "intentSms":Landroid/content/Intent;
    .end local v8    # "telParsedResult":Lcom/google/zxing/client/result/TelParsedResult;
    .end local v9    # "uri":Landroid/net/Uri;
    :pswitch_3
    if-eqz v1, :cond_4

    .line 97
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v2, "intentPhone":Landroid/content/Intent;
    const-string v11, "android.intent.action.DIAL"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tel:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/vision/barcode/Barcode;->sms:Lcom/google/android/gms/vision/barcode/Barcode$Sms;

    iget-object v12, v12, Lcom/google/android/gms/vision/barcode/Barcode$Sms;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 100
    iget-object v11, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v11, v2}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 101
    .end local v2    # "intentPhone":Landroid/content/Intent;
    :cond_4
    if-eqz v10, :cond_0

    .line 102
    invoke-static {v10}, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/client/result/SMSParsedResult;

    move-object v7, v11

    check-cast v7, Lcom/google/zxing/client/result/SMSParsedResult;

    .line 103
    .local v7, "smsParsedResult":Lcom/google/zxing/client/result/SMSParsedResult;
    if-nez v7, :cond_5

    .line 104
    invoke-static {v10}, Lcom/google/zxing/client/result/SMSMMSResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/client/result/SMSParsedResult;

    move-object v7, v11

    check-cast v7, Lcom/google/zxing/client/result/SMSParsedResult;

    .line 105
    if-eqz v7, :cond_0

    .line 106
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 107
    .restart local v2    # "intentPhone":Landroid/content/Intent;
    const-string v11, "android.intent.action.DIAL"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tel:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/google/zxing/client/result/SMSParsedResult;->getNumbers()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 109
    iget-object v11, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v11, v2}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 113
    .end local v2    # "intentPhone":Landroid/content/Intent;
    :cond_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 114
    .restart local v2    # "intentPhone":Landroid/content/Intent;
    const-string v11, "android.intent.action.DIAL"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tel:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/google/zxing/client/result/SMSParsedResult;->getNumbers()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 116
    iget-object v11, p0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v11, v2}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 122
    .end local v2    # "intentPhone":Landroid/content/Intent;
    .end local v7    # "smsParsedResult":Lcom/google/zxing/client/result/SMSParsedResult;
    :pswitch_4
    if-eqz v1, :cond_6

    .line 123
    iget-object v11, v1, Lcom/google/android/gms/vision/barcode/Barcode;->email:Lcom/google/android/gms/vision/barcode/Barcode$Email;

    iget-object v11, v11, Lcom/google/android/gms/vision/barcode/Barcode$Email;->address:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/camera/scenerecognition/BarCodeAction;->BarCodeImportEmail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    :cond_6
    if-eqz v10, :cond_0

    .line 125
    invoke-static {v10}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    .line 126
    .local v0, "emailAddressParsedResult":Lcom/google/zxing/client/result/EmailAddressParsedResult;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getEmailAddress()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/camera/scenerecognition/BarCodeAction;->BarCodeImportEmail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public sendBarCodeThirdAction(Lcom/android/camera/barcode/BarCodeResult;)V
    .locals 24
    .param p1, "data"    # Lcom/android/camera/barcode/BarCodeResult;

    .prologue
    .line 443
    if-nez p1, :cond_1

    .line 550
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 444
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/barcode/BarCodeResult;->getGoogleBarCode()Lcom/google/android/gms/vision/barcode/Barcode;

    move-result-object v6

    .line 445
    .local v6, "googleResult":Lcom/google/android/gms/vision/barcode/Barcode;
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/barcode/BarCodeResult;->getZxingResult()Lcom/google/zxing/Result;

    move-result-object v19

    .line 446
    .local v19, "zxingResult":Lcom/google/zxing/Result;
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/barcode/BarCodeResult;->getType()Lcom/android/camera/barcode/BarCodeResult$ResultType;

    move-result-object v15

    .line 447
    .local v15, "resultType":Lcom/android/camera/barcode/BarCodeResult$ResultType;
    if-eqz v15, :cond_0

    .line 450
    const-string v10, ""

    .line 451
    .local v10, "lowerCaseString":Ljava/lang/String;
    sget-object v20, Lcom/android/camera/scenerecognition/BarCodeAction$1;->$SwitchMap$com$android$camera$barcode$BarCodeResult$ResultType:[I

    invoke-virtual {v15}, Lcom/android/camera/barcode/BarCodeResult$ResultType;->ordinal()I

    move-result v21

    aget v20, v20, v21

    packed-switch v20, :pswitch_data_0

    goto :goto_0

    .line 453
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v20

    const-string v21, "clipboard"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ClipboardManager;

    .line 454
    .local v5, "cmURL":Landroid/content/ClipboardManager;
    const/4 v14, 0x0

    .line 455
    .local v14, "mClipDataURL":Landroid/content/ClipData;
    if-eqz v6, :cond_3

    .line 456
    const-string v20, "Label"

    iget-object v0, v6, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v14

    .line 464
    :cond_2
    :goto_1
    invoke-virtual {v5, v14}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f08004f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 457
    :cond_3
    if-eqz v19, :cond_2

    .line 458
    invoke-static/range {v19 .. v19}, Lcom/google/zxing/client/result/URIResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v20

    check-cast v20, Lcom/google/zxing/client/result/URIParsedResult;

    move-object/from16 v18, v20

    check-cast v18, Lcom/google/zxing/client/result/URIParsedResult;

    .line 459
    .local v18, "uriParsedResult":Lcom/google/zxing/client/result/URIParsedResult;
    if-eqz v18, :cond_0

    .line 462
    const-string v20, "Label"

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/result/URIParsedResult;->getURI()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v14

    goto :goto_1

    .line 470
    .end local v5    # "cmURL":Landroid/content/ClipboardManager;
    .end local v14    # "mClipDataURL":Landroid/content/ClipData;
    .end local v18    # "uriParsedResult":Lcom/google/zxing/client/result/URIParsedResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v20

    const-string v21, "clipboard"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipboardManager;

    .line 471
    .local v4, "cmText":Landroid/content/ClipboardManager;
    const/4 v13, 0x0

    .line 472
    .local v13, "mClipDataText":Landroid/content/ClipData;
    if-eqz v6, :cond_5

    .line 473
    const-string v20, "Label"

    iget-object v0, v6, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v13

    .line 477
    :cond_4
    :goto_2
    invoke-virtual {v4, v13}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f08004f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 474
    :cond_5
    if-eqz v19, :cond_4

    .line 475
    const-string v20, "Label"

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v13

    goto :goto_2

    .line 481
    .end local v4    # "cmText":Landroid/content/ClipboardManager;
    .end local v13    # "mClipDataText":Landroid/content/ClipData;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v20

    const-string v21, "clipboard"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    .line 482
    .local v3, "cmISBN":Landroid/content/ClipboardManager;
    const/4 v12, 0x0

    .line 483
    .local v12, "mClipDataISBN":Landroid/content/ClipData;
    if-eqz v6, :cond_7

    .line 484
    const-string v20, "Label"

    iget-object v0, v6, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v12

    .line 492
    :cond_6
    :goto_3
    invoke-virtual {v3, v12}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f08004f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 485
    :cond_7
    if-eqz v19, :cond_6

    .line 486
    invoke-static/range {v19 .. v19}, Lcom/google/zxing/client/result/ISBNResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v20

    check-cast v20, Lcom/google/zxing/client/result/ISBNParsedResult;

    move-object/from16 v7, v20

    check-cast v7, Lcom/google/zxing/client/result/ISBNParsedResult;

    .line 487
    .local v7, "isbnParsedResult":Lcom/google/zxing/client/result/ISBNParsedResult;
    if-eqz v7, :cond_0

    .line 490
    const-string v20, "Label"

    invoke-virtual {v7}, Lcom/google/zxing/client/result/ISBNParsedResult;->getISBN()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v12

    goto :goto_3

    .line 496
    .end local v3    # "cmISBN":Landroid/content/ClipboardManager;
    .end local v7    # "isbnParsedResult":Lcom/google/zxing/client/result/ISBNParsedResult;
    .end local v12    # "mClipDataISBN":Landroid/content/ClipData;
    :pswitch_4
    if-eqz v6, :cond_8

    .line 497
    iget-object v0, v6, Lcom/google/android/gms/vision/barcode/Barcode;->phone:Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->number:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/camera/scenerecognition/BarCodeAction;->BarcodeImportContacts(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 498
    :cond_8
    if-eqz v19, :cond_0

    .line 499
    invoke-static/range {v19 .. v19}, Lcom/google/zxing/client/result/TelResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v20

    check-cast v20, Lcom/google/zxing/client/result/TelParsedResult;

    move-object/from16 v17, v20

    check-cast v17, Lcom/google/zxing/client/result/TelParsedResult;

    .line 500
    .local v17, "telParsedResult":Lcom/google/zxing/client/result/TelParsedResult;
    if-eqz v17, :cond_0

    .line 503
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/client/result/TelParsedResult;->getNumber()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/camera/scenerecognition/BarCodeAction;->BarcodeImportContacts(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 507
    .end local v17    # "telParsedResult":Lcom/google/zxing/client/result/TelParsedResult;
    :pswitch_5
    if-eqz v6, :cond_9

    .line 508
    iget-object v0, v6, Lcom/google/android/gms/vision/barcode/Barcode;->sms:Lcom/google/android/gms/vision/barcode/Barcode$Sms;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode$Sms;->phoneNumber:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/camera/scenerecognition/BarCodeAction;->BarcodeImportContacts(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 509
    :cond_9
    if-eqz v19, :cond_0

    .line 510
    invoke-static/range {v19 .. v19}, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v20

    check-cast v20, Lcom/google/zxing/client/result/SMSParsedResult;

    move-object/from16 v16, v20

    check-cast v16, Lcom/google/zxing/client/result/SMSParsedResult;

    .line 511
    .local v16, "smsParsedResult":Lcom/google/zxing/client/result/SMSParsedResult;
    if-nez v16, :cond_a

    .line 512
    invoke-static/range {v19 .. v19}, Lcom/google/zxing/client/result/SMSMMSResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v20

    check-cast v20, Lcom/google/zxing/client/result/SMSParsedResult;

    move-object/from16 v16, v20

    check-cast v16, Lcom/google/zxing/client/result/SMSParsedResult;

    .line 513
    if-eqz v16, :cond_0

    .line 516
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/client/result/SMSParsedResult;->getNumbers()[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/camera/scenerecognition/BarCodeAction;->BarcodeImportContacts(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 519
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/client/result/SMSParsedResult;->getNumbers()[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/camera/scenerecognition/BarCodeAction;->BarcodeImportContacts(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 532
    .end local v16    # "smsParsedResult":Lcom/google/zxing/client/result/SMSParsedResult;
    :pswitch_6
    const-string v9, ""

    .line 533
    .local v9, "licenseText":Ljava/lang/String;
    if-eqz v6, :cond_c

    .line 534
    iget-object v8, v6, Lcom/google/android/gms/vision/barcode/Barcode;->driverLicense:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    .line 535
    .local v8, "license":Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;
    const v20, 0x7f080025

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/camera/scenerecognition/BarCodeAction;->getResourceString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0xe

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget-object v0, v8, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->licenseNumber:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x1

    iget-object v0, v8, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressCity:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x2

    iget-object v0, v8, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressState:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x3

    iget-object v0, v8, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressStreet:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x4

    iget-object v0, v8, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressZip:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x5

    iget-object v0, v8, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->birthDate:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x6

    iget-object v0, v8, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->documentType:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x7

    iget-object v0, v8, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->expiryDate:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x8

    iget-object v0, v8, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->firstName:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x9

    iget-object v0, v8, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->middleName:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0xa

    iget-object v0, v8, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->lastName:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0xb

    iget-object v0, v8, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->gender:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0xc

    iget-object v0, v8, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->issueDate:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0xd

    iget-object v0, v8, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->issuingCountry:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 541
    .end local v8    # "license":Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v20

    const-string v21, "clipboard"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 542
    .local v2, "cmDL":Landroid/content/ClipboardManager;
    const-string v20, "Label"

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v11

    .line 543
    .local v11, "mClipDataDL":Landroid/content/ClipData;
    invoke-virtual {v2, v11}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/scenerecognition/BarCodeAction;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f08004f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 538
    .end local v2    # "cmDL":Landroid/content/ClipboardManager;
    .end local v11    # "mClipDataDL":Landroid/content/ClipData;
    :cond_c
    if-eqz v19, :cond_b

    goto :goto_4

    .line 451
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
