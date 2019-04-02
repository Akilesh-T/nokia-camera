.class public Lcom/android/camera/barcode/BarCodeUI;
.super Ljava/lang/Object;
.source "BarCodeUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/barcode/BarCodeUI$StartImportEmail;,
        Lcom/android/camera/barcode/BarCodeUI$StartImportCalendar;,
        Lcom/android/camera/barcode/BarCodeUI$StartImportContacts;,
        Lcom/android/camera/barcode/BarCodeUI$StartImportPhone;,
        Lcom/android/camera/barcode/BarCodeUI$BarcodeThirdClickListener;,
        Lcom/android/camera/barcode/BarCodeUI$BarcodeSecondClickListener;,
        Lcom/android/camera/barcode/BarCodeUI$BarcodeClickListener;
    }
.end annotation


# static fields
.field private static CALENDER_EVENT_URL:Ljava/lang/String;

.field private static CALENDER_REMINDER_URL:Ljava/lang/String;

.field private static CALENDER_URL:Ljava/lang/String;


# instance fields
.field private barcode_dialog:Landroid/app/AlertDialog;

.field private barcode_title_text2:Landroid/widget/TextView;

.field private mAlertBuilder:Landroid/app/AlertDialog$Builder;

.field private mBarCodeButtonView:Landroid/widget/ImageButton;

.field private mBarCodeTextView:Landroid/widget/TextView;

.field private mController:Lcom/android/camera/app/AppController;

.field private mDialogView:Landroid/view/View;

.field private mImportCalendarThread:Lcom/android/camera/barcode/BarCodeUI$StartImportCalendar;

.field private mImportContactsThread:Lcom/android/camera/barcode/BarCodeUI$StartImportContacts;

.field private mImportEmailThread:Lcom/android/camera/barcode/BarCodeUI$StartImportEmail;

.field private mImportPhoneThread:Lcom/android/camera/barcode/BarCodeUI$StartImportPhone;

.field private mIsImportCalendar:Z

.field private mIsImportContact:Z

.field private mIsImportEmail:Z

.field private mIsImportPhone:Z

.field private mWebview:Landroid/webkit/WebView;

.field private wifiAdmin:Lcom/android/camera/barcode/WifiAdmin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 807
    const-string v0, "content://com.android.calendar/calendars"

    sput-object v0, Lcom/android/camera/barcode/BarCodeUI;->CALENDER_URL:Ljava/lang/String;

    .line 808
    const-string v0, "content://com.android.calendar/events"

    sput-object v0, Lcom/android/camera/barcode/BarCodeUI;->CALENDER_EVENT_URL:Ljava/lang/String;

    .line 809
    const-string v0, "content://com.android.calendar/reminders"

    sput-object v0, Lcom/android/camera/barcode/BarCodeUI;->CALENDER_REMINDER_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    iput-boolean v0, p0, Lcom/android/camera/barcode/BarCodeUI;->mIsImportPhone:Z

    .line 648
    iput-boolean v0, p0, Lcom/android/camera/barcode/BarCodeUI;->mIsImportContact:Z

    .line 804
    iput-boolean v0, p0, Lcom/android/camera/barcode/BarCodeUI;->mIsImportCalendar:Z

    .line 924
    iput-boolean v0, p0, Lcom/android/camera/barcode/BarCodeUI;->mIsImportEmail:Z

    .line 54
    return-void
.end method

.method private BarCodeImportEmail(Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode$Email;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "email"    # Lcom/google/android/gms/vision/barcode/Barcode$Email;

    .prologue
    .line 929
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/barcode/BarCodeUI;->mIsImportEmail:Z

    .line 930
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 931
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 933
    const-string v1, "email"

    iget-object v2, p2, Lcom/google/android/gms/vision/barcode/Barcode$Email;->address:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 935
    const-string v1, "phone_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 936
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 937
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/barcode/BarCodeUI;->mIsImportEmail:Z

    .line 939
    return-void
.end method

.method private BarcodeImpoetCalendar(Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "barcode"    # Lcom/google/android/gms/vision/barcode/Barcode;

    .prologue
    const/4 v8, 0x0

    .line 813
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/barcode/BarCodeUI;->mIsImportCalendar:Z

    .line 814
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 815
    .local v0, "beginTime":Landroid/icu/util/Calendar;
    iget-object v2, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v2, v2, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->start:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iget v1, v2, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->year:I

    iget-object v2, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v2, v2, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->start:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iget v2, v2, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->month:I

    iget-object v3, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v3, v3, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->start:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iget v3, v3, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->day:I

    iget-object v4, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v4, v4, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->start:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iget v4, v4, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->hours:I

    iget-object v5, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v5, v5, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->start:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iget v5, v5, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->minutes:I

    invoke-virtual/range {v0 .. v5}, Landroid/icu/util/Calendar;->set(IIIII)V

    .line 816
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v1

    .line 817
    .local v1, "endTime":Landroid/icu/util/Calendar;
    iget-object v2, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v2, v2, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->end:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iget v2, v2, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->year:I

    iget-object v3, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v3, v3, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->end:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iget v3, v3, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->month:I

    iget-object v4, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v4, v4, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->end:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iget v4, v4, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->day:I

    iget-object v5, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v5, v5, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->end:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iget v5, v5, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->hours:I

    iget-object v6, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v6, v6, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->end:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iget v6, v6, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->minutes:I

    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/Calendar;->set(IIIII)V

    .line 818
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 819
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "beginTime"

    .line 820
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "endTime"

    .line 821
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "title"

    iget-object v4, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v4, v4, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->summary:Ljava/lang/String;

    .line 822
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "description"

    iget-object v4, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v4, v4, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->description:Ljava/lang/String;

    .line 823
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "eventLocation"

    iget-object v4, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v4, v4, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->location:Ljava/lang/String;

    .line 824
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "availability"

    .line 825
    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .line 827
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 828
    iput-boolean v8, p0, Lcom/android/camera/barcode/BarCodeUI;->mIsImportCalendar:Z

    .line 829
    return-void
.end method

.method private BarcodeImportContacts(Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "barcode"    # Lcom/google/android/gms/vision/barcode/Barcode;

    .prologue
    const/4 v7, 0x0

    .line 666
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/camera/barcode/BarCodeUI;->mIsImportContact:Z

    .line 667
    iget-object v0, p2, Lcom/google/android/gms/vision/barcode/Barcode;->contactInfo:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    .line 668
    .local v0, "contactInfo":Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 669
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    iget-object v6, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    iget-object v6, v6, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->formattedName:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 672
    const-string v6, "name"

    iget-object v8, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    iget-object v8, v8, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->formattedName:Ljava/lang/String;

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    :cond_0
    iget-object v6, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    iget-object v6, v6, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->last:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 675
    const-string v6, "phonetic_name"

    iget-object v8, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    iget-object v8, v8, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->last:Ljava/lang/String;

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    :cond_1
    iget-object v5, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->phones:[Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    .line 678
    .local v5, "phoneList":[Lcom/google/android/gms/vision/barcode/Barcode$Phone;
    if-eqz v5, :cond_2

    .line 679
    array-length v8, v5

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v4, v5, v6

    .line 680
    .local v4, "phoneInfo":Lcom/google/android/gms/vision/barcode/Barcode$Phone;
    const-string v9, "phone"

    iget-object v10, v4, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->number:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 684
    .end local v4    # "phoneInfo":Lcom/google/android/gms/vision/barcode/Barcode$Phone;
    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->emails:[Lcom/google/android/gms/vision/barcode/Barcode$Email;

    .line 685
    .local v2, "emailList":[Lcom/google/android/gms/vision/barcode/Barcode$Email;
    if-eqz v2, :cond_3

    .line 686
    array-length v8, v2

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v1, v2, v6

    .line 687
    .local v1, "email":Lcom/google/android/gms/vision/barcode/Barcode$Email;
    const-string v9, "email"

    iget-object v10, v1, Lcom/google/android/gms/vision/barcode/Barcode$Email;->address:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 691
    .end local v1    # "email":Lcom/google/android/gms/vision/barcode/Barcode$Email;
    :cond_3
    const-string v6, "phone_type"

    const/4 v8, 0x3

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 692
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 694
    iput-boolean v7, p0, Lcom/android/camera/barcode/BarCodeUI;->mIsImportContact:Z

    .line 695
    return-void
.end method

.method private BarcodeImportContacts(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 654
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/barcode/BarCodeUI;->mIsImportContact:Z

    .line 655
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 656
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    const-string v1, "phone_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 659
    iget-object v1, p0, Lcom/android/camera/barcode/BarCodeUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 660
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/barcode/BarCodeUI;->mIsImportContact:Z

    .line 661
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeUI;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeUI;->mController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/barcode/BarCodeUI;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeUI;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/camera/barcode/BarCodeUI;->showTextActivity(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/barcode/BarCodeUI;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeUI;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/camera/barcode/BarCodeUI;->BarcodeImportContacts(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/camera/barcode/BarCodeUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeUI;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/camera/barcode/BarCodeUI;->mIsImportPhone:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/camera/barcode/BarCodeUI;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeUI;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/camera/barcode/BarCodeUI;->addPhoneToContact(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/camera/barcode/BarCodeUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeUI;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/camera/barcode/BarCodeUI;->mIsImportEmail:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/camera/barcode/BarCodeUI;Lcom/google/android/gms/vision/barcode/Barcode$Email;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeUI;
    .param p1, "x1"    # Lcom/google/android/gms/vision/barcode/Barcode$Email;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/camera/barcode/BarCodeUI;->addEmailToContact(Lcom/google/android/gms/vision/barcode/Barcode$Email;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/barcode/BarCodeUI;)Lcom/android/camera/barcode/WifiAdmin;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeUI;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeUI;->wifiAdmin:Lcom/android/camera/barcode/WifiAdmin;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/barcode/BarCodeUI;Lcom/android/camera/barcode/WifiAdmin;)Lcom/android/camera/barcode/WifiAdmin;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeUI;
    .param p1, "x1"    # Lcom/android/camera/barcode/WifiAdmin;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/camera/barcode/BarCodeUI;->wifiAdmin:Lcom/android/camera/barcode/WifiAdmin;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/barcode/BarCodeUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeUI;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/camera/barcode/BarCodeUI;->mIsImportContact:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/barcode/BarCodeUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeUI;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/camera/barcode/BarCodeUI;->mIsImportContact:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/barcode/BarCodeUI;Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeUI;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/google/android/gms/vision/barcode/Barcode;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/camera/barcode/BarCodeUI;->BarcodeImportContacts(Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/barcode/BarCodeUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeUI;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/camera/barcode/BarCodeUI;->mIsImportCalendar:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/barcode/BarCodeUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeUI;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/camera/barcode/BarCodeUI;->mIsImportCalendar:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/barcode/BarCodeUI;Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeUI;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/google/android/gms/vision/barcode/Barcode;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/camera/barcode/BarCodeUI;->BarcodeImpoetCalendar(Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/barcode/BarCodeUI;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeUI;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/camera/barcode/BarCodeUI;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/barcode/BarCodeUI;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeUI;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeUI;->barcode_dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/barcode/BarCodeUI;Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode$Email;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeUI;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/google/android/gms/vision/barcode/Barcode$Email;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/camera/barcode/BarCodeUI;->BarCodeImportEmail(Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode$Email;)V

    return-void
.end method

.method private addEmailToContact(Lcom/google/android/gms/vision/barcode/Barcode$Email;)V
    .locals 6
    .param p1, "email"    # Lcom/google/android/gms/vision/barcode/Barcode$Email;

    .prologue
    .line 959
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 960
    .local v3, "values":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/camera/barcode/BarCodeUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 961
    .local v2, "rawContactUri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 963
    .local v0, "rawContactId":J
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 964
    const-string v4, "raw_contact_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 965
    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string v4, "data1"

    iget-object v5, p1, Lcom/google/android/gms/vision/barcode/Barcode$Email;->address:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const-string v4, "data2"

    iget v5, p1, Lcom/google/android/gms/vision/barcode/Barcode$Email;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 968
    iget-object v4, p0, Lcom/android/camera/barcode/BarCodeUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 970
    return-void
.end method

.method private addPhoneToContact(Ljava/lang/String;)V
    .locals 13
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 507
    const-wide/16 v10, -0x1

    .line 508
    .local v10, "id":J
    const/4 v7, 0x0

    .line 510
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "raw_contact_id"

    aput-object v1, v6, v0

    .line 512
    .local v6, "columns":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "data1 = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 516
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .line 522
    :cond_0
    if-eqz v7, :cond_1

    .line 523
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 524
    const/4 v7, 0x0

    .line 528
    .end local v6    # "columns":[Ljava/lang/String;
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_3

    .line 543
    :goto_1
    return-void

    .line 519
    :catch_0
    move-exception v8

    .line 520
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    if-eqz v7, :cond_1

    .line 523
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 524
    const/4 v7, 0x0

    goto :goto_0

    .line 522
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 523
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 524
    const/4 v7, 0x0

    :cond_2
    throw v0

    .line 532
    :cond_3
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 533
    .local v12, "values":Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 534
    .local v9, "rawContactUri":Landroid/net/Uri;
    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 536
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 537
    const-string v0, "raw_contact_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 538
    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v0, "data1"

    invoke-virtual {v12, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v0, "data2"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 541
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1
.end method

.method private checkAndAddCalendarAccount(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 856
    invoke-direct {p0, p1}, Lcom/android/camera/barcode/BarCodeUI;->checkCalendarAccount(Landroid/content/Context;)I

    move-result v0

    .line 857
    .local v0, "oldId":I
    if-ltz v0, :cond_0

    .line 860
    .end local v0    # "oldId":I
    :goto_0
    return v0

    .restart local v0    # "oldId":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private checkCalendarAccount(Landroid/content/Context;)I
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, -0x1

    const/4 v2, 0x0

    .line 865
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/camera/barcode/BarCodeUI;->CALENDER_URL:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 867
    .local v7, "userCursor":Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 878
    if-eqz v7, :cond_0

    .line 879
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v8

    .line 875
    :cond_1
    :goto_0
    return v0

    .line 870
    :cond_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 871
    .local v6, "count":I
    if-lez v6, :cond_3

    .line 872
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 873
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 878
    if-eqz v7, :cond_1

    .line 879
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 878
    :cond_3
    if-eqz v7, :cond_4

    .line 879
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    .line 875
    goto :goto_0

    .line 878
    .end local v6    # "count":I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 879
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private getResourceString(I)Ljava/lang/String;
    .locals 2
    .param p1, "stringId"    # I

    .prologue
    .line 983
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/barcode/BarCodeUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 986
    :goto_0
    return-object v1

    .line 984
    :catch_0
    move-exception v0

    .line 986
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, ""

    goto :goto_0
.end method

.method private setSecondButtonString(ILandroid/widget/Button;)V
    .locals 4
    .param p1, "format"    # I
    .param p2, "button"    # Landroid/widget/Button;

    .prologue
    const v3, 0x7f080023

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/4 v0, 0x0

    .line 546
    packed-switch p1, :pswitch_data_0

    .line 594
    :goto_0
    :pswitch_0
    return-void

    .line 548
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 549
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 552
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 553
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 556
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 557
    const v0, 0x7f080028

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 560
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 561
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 564
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 565
    const v0, 0x7f080026

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 568
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 569
    const v0, 0x7f08002f

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 572
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 573
    const v0, 0x7f080024

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 576
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 577
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 580
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 581
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 584
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 585
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 588
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 589
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 546
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_1
        :pswitch_8
        :pswitch_2
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private setThirdButtonString(ILandroid/widget/Button;)V
    .locals 4
    .param p1, "format"    # I
    .param p2, "button"    # Landroid/widget/Button;

    .prologue
    const v3, 0x7f080024

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x4

    .line 597
    packed-switch p1, :pswitch_data_0

    .line 645
    :goto_0
    :pswitch_0
    return-void

    .line 599
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 600
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 603
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 604
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 607
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 608
    const v0, 0x7f080023

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 611
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 612
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 615
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 616
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 619
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 620
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 623
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 624
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 627
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 628
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 631
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 632
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 635
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 636
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 639
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 640
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 597
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_1
        :pswitch_8
        :pswitch_2
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private showTextActivity(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "showSearch"    # Z

    .prologue
    .line 973
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 974
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "show_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 975
    const-string v1, "show_search_button"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 976
    iget-object v1, p0, Lcom/android/camera/barcode/BarCodeUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v1

    const-class v2, Lcom/android/camera/barcode/BarcodeTextActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 977
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 978
    iget-object v1, p0, Lcom/android/camera/barcode/BarCodeUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 979
    return-void
.end method

.method private stopBarCodeThread()V
    .locals 0

    .prologue
    .line 992
    return-void
.end method


# virtual methods
.method public HideBarCodeInfo()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeUI;->barcode_dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeUI;->barcode_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeUI;->barcode_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 61
    :cond_0
    return-void
.end method

.method public addCalendarEvent(Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "barcode"    # Lcom/google/android/gms/vision/barcode/Barcode;

    .prologue
    .line 885
    if-nez p1, :cond_1

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/barcode/BarCodeUI;->checkAndAddCalendarAccount(Landroid/content/Context;)I

    move-result v0

    .line 889
    .local v0, "calId":I
    if-ltz v0, :cond_0

    .line 893
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 894
    .local v4, "event":Landroid/content/ContentValues;
    const-string v10, "title"

    iget-object v11, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v11, v11, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->summary:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const-string v10, "description"

    iget-object v11, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v11, v11, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->description:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string v10, "calendar_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 897
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v6, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 899
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v10, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v10, v10, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->start:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iget-object v10, v10, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->rawValue:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 901
    .local v8, "startMillionSeconds":J
    const-string v10, "dtstart"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    .end local v8    # "startMillionSeconds":J
    :goto_1
    :try_start_1
    iget-object v10, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v10, v10, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->end:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iget-object v10, v10, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->rawValue:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 908
    .local v2, "endMillionSeconds":J
    const-string v10, "dtstart"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 909
    const-string v10, "dtend"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 913
    .end local v2    # "endMillionSeconds":J
    :goto_2
    const-string v10, "eventLocation"

    iget-object v11, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v11, v11, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->location:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v10, "hasAlarm"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 915
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    .line 917
    .local v7, "tz":Ljava/util/TimeZone;
    const-string v10, "eventTimezone"

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/android/camera/barcode/BarCodeUI;->CALENDER_EVENT_URL:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 919
    .local v5, "newEvent":Landroid/net/Uri;
    if-nez v5, :cond_0

    goto/16 :goto_0

    .line 902
    .end local v5    # "newEvent":Landroid/net/Uri;
    .end local v7    # "tz":Ljava/util/TimeZone;
    :catch_0
    move-exception v1

    .line 903
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 910
    .end local v1    # "e":Ljava/text/ParseException;
    :catch_1
    move-exception v1

    .line 911
    .restart local v1    # "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_2
.end method

.method public addContacts(Landroid/app/Activity;Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;)V
    .locals 18
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "info"    # Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    .prologue
    .line 721
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 722
    .local v12, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 723
    .local v10, "rawContactUri":Landroid/net/Uri;
    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 725
    .local v8, "rawContactId":J
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 726
    const-string v13, "raw_contact_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 727
    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/name"

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v13, "data2"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    iget-object v14, v14, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->formattedName:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 732
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->phones:[Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    .line 733
    .local v7, "phoneList":[Lcom/google/android/gms/vision/barcode/Barcode$Phone;
    if-eqz v7, :cond_0

    .line 734
    array-length v14, v7

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v14, :cond_0

    aget-object v6, v7, v13

    .line 735
    .local v6, "phoneInfo":Lcom/google/android/gms/vision/barcode/Barcode$Phone;
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 736
    const-string v15, "raw_contact_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 737
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v15, "data1"

    iget-object v0, v6, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->number:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v15, "data2"

    iget v0, v6, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->type:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 734
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 745
    .end local v6    # "phoneInfo":Lcom/google/android/gms/vision/barcode/Barcode$Phone;
    :cond_0
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->emails:[Lcom/google/android/gms/vision/barcode/Barcode$Email;

    .line 746
    .local v5, "emailList":[Lcom/google/android/gms/vision/barcode/Barcode$Email;
    if-eqz v5, :cond_1

    .line 747
    array-length v14, v5

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_1

    aget-object v4, v5, v13

    .line 748
    .local v4, "email":Lcom/google/android/gms/vision/barcode/Barcode$Email;
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 749
    const-string v15, "raw_contact_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 750
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-string v15, "data1"

    iget-object v0, v4, Lcom/google/android/gms/vision/barcode/Barcode$Email;->address:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v15, "data2"

    iget v0, v4, Lcom/google/android/gms/vision/barcode/Barcode$Email;->type:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 753
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 747
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 758
    .end local v4    # "email":Lcom/google/android/gms/vision/barcode/Barcode$Email;
    :cond_1
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->addresses:[Lcom/google/android/gms/vision/barcode/Barcode$Address;

    .line 759
    .local v3, "addressList":[Lcom/google/android/gms/vision/barcode/Barcode$Address;
    if-eqz v3, :cond_3

    .line 760
    array-length v14, v3

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v14, :cond_3

    aget-object v2, v3, v13

    .line 761
    .local v2, "address":Lcom/google/android/gms/vision/barcode/Barcode$Address;
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 762
    iget-object v15, v2, Lcom/google/android/gms/vision/barcode/Barcode$Address;->addressLines:[Ljava/lang/String;

    if-eqz v15, :cond_2

    iget-object v15, v2, Lcom/google/android/gms/vision/barcode/Barcode$Address;->addressLines:[Ljava/lang/String;

    array-length v15, v15

    if-lez v15, :cond_2

    .line 763
    const-string v15, "raw_contact_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 764
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v15, "data1"

    iget-object v0, v2, Lcom/google/android/gms/vision/barcode/Barcode$Address;->addressLines:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v15, "data2"

    iget v0, v2, Lcom/google/android/gms/vision/barcode/Barcode$Address;->type:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 767
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 760
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 773
    .end local v2    # "address":Lcom/google/android/gms/vision/barcode/Barcode$Address;
    :cond_3
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->organization:Ljava/lang/String;

    if-eqz v13, :cond_4

    .line 774
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 775
    const-string v13, "raw_contact_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 776
    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/organization"

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string v13, "data1"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->organization:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 782
    :cond_4
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->title:Ljava/lang/String;

    if-eqz v13, :cond_5

    .line 783
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 784
    const-string v13, "raw_contact_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 785
    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/organization"

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string v13, "data4"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->title:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 791
    :cond_5
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->urls:[Ljava/lang/String;

    if-eqz v13, :cond_6

    .line 792
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->urls:[Ljava/lang/String;

    array-length v15, v14

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v15, :cond_6

    aget-object v11, v14, v13

    .line 793
    .local v11, "url":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 794
    const-string v16, "raw_contact_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 795
    const-string v16, "mimetype"

    const-string v17, "vnd.android.cursor.item/website"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    const-string v16, "data1"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string v16, "data2"

    const/16 v17, 0x5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 798
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 792
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 802
    .end local v11    # "url":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeUI;->barcode_dialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeUI;->barcode_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    goto :goto_0
.end method
