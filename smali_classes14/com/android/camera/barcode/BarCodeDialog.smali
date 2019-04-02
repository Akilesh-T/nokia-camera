.class public Lcom/android/camera/barcode/BarCodeDialog;
.super Ljava/lang/Object;
.source "BarCodeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/barcode/BarCodeDialog$StartImportEmail;,
        Lcom/android/camera/barcode/BarCodeDialog$StartImportCalendar;,
        Lcom/android/camera/barcode/BarCodeDialog$StartImportContacts;,
        Lcom/android/camera/barcode/BarCodeDialog$StartImportPhone;,
        Lcom/android/camera/barcode/BarCodeDialog$BarcodeThirdClickListener;,
        Lcom/android/camera/barcode/BarCodeDialog$BarcodeSecondClickListener;,
        Lcom/android/camera/barcode/BarCodeDialog$BarcodeClickListener;
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

.field private final mController:Lcom/android/camera/app/AppController;

.field private mDialogView:Landroid/view/View;

.field private mImportCalendarThread:Lcom/android/camera/barcode/BarCodeDialog$StartImportCalendar;

.field private mImportContactsThread:Lcom/android/camera/barcode/BarCodeDialog$StartImportContacts;

.field private mImportEmailThread:Lcom/android/camera/barcode/BarCodeDialog$StartImportEmail;

.field private mImportPhoneThread:Lcom/android/camera/barcode/BarCodeDialog$StartImportPhone;

.field private mIsImportCalendar:Z

.field private mIsImportContact:Z

.field private mIsImportEmail:Z

.field private mIsImportPhone:Z

.field private final mMainThread:Lcom/android/camera/async/MainThread;

.field private mWebview:Landroid/webkit/WebView;

.field toast:Landroid/widget/Toast;

.field private wifiAdmin:Lcom/android/camera/barcode/WifiAdmin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 833
    const-string v0, "content://com.android.calendar/calendars"

    sput-object v0, Lcom/android/camera/barcode/BarCodeDialog;->CALENDER_URL:Ljava/lang/String;

    .line 834
    const-string v0, "content://com.android.calendar/events"

    sput-object v0, Lcom/android/camera/barcode/BarCodeDialog;->CALENDER_EVENT_URL:Ljava/lang/String;

    .line 835
    const-string v0, "content://com.android.calendar/reminders"

    sput-object v0, Lcom/android/camera/barcode/BarCodeDialog;->CALENDER_REMINDER_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Lcom/android/camera/async/MainThread;)V
    .locals 1
    .param p1, "mController"    # Lcom/android/camera/app/AppController;
    .param p2, "mainThread"    # Lcom/android/camera/async/MainThread;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput-boolean v0, p0, Lcom/android/camera/barcode/BarCodeDialog;->mIsImportPhone:Z

    .line 674
    iput-boolean v0, p0, Lcom/android/camera/barcode/BarCodeDialog;->mIsImportContact:Z

    .line 830
    iput-boolean v0, p0, Lcom/android/camera/barcode/BarCodeDialog;->mIsImportCalendar:Z

    .line 950
    iput-boolean v0, p0, Lcom/android/camera/barcode/BarCodeDialog;->mIsImportEmail:Z

    .line 58
    iput-object p1, p0, Lcom/android/camera/barcode/BarCodeDialog;->mController:Lcom/android/camera/app/AppController;

    .line 59
    iput-object p2, p0, Lcom/android/camera/barcode/BarCodeDialog;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 61
    return-void
.end method

.method private BarCodeImportEmail(Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode$Email;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "email"    # Lcom/google/android/gms/vision/barcode/Barcode$Email;

    .prologue
    .line 955
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/barcode/BarCodeDialog;->mIsImportEmail:Z

    .line 956
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 957
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 959
    const-string v1, "email"

    iget-object v2, p2, Lcom/google/android/gms/vision/barcode/Barcode$Email;->address:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 961
    const-string v1, "phone_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 962
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 963
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/barcode/BarCodeDialog;->mIsImportEmail:Z

    .line 965
    return-void
.end method

.method private BarcodeImpoetCalendar(Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "barcode"    # Lcom/google/android/gms/vision/barcode/Barcode;

    .prologue
    const/4 v8, 0x0

    .line 839
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/barcode/BarCodeDialog;->mIsImportCalendar:Z

    .line 840
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 841
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

    .line 842
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v1

    .line 843
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

    .line 844
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 845
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "beginTime"

    .line 846
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "endTime"

    .line 847
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "title"

    iget-object v4, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v4, v4, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->summary:Ljava/lang/String;

    .line 848
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "description"

    iget-object v4, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v4, v4, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->description:Ljava/lang/String;

    .line 849
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "eventLocation"

    iget-object v4, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v4, v4, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->location:Ljava/lang/String;

    .line 850
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "availability"

    .line 851
    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .line 853
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 854
    iput-boolean v8, p0, Lcom/android/camera/barcode/BarCodeDialog;->mIsImportCalendar:Z

    .line 855
    return-void
.end method

.method private BarcodeImportContacts(Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "barcode"    # Lcom/google/android/gms/vision/barcode/Barcode;

    .prologue
    const/4 v7, 0x0

    .line 692
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/camera/barcode/BarCodeDialog;->mIsImportContact:Z

    .line 693
    iget-object v0, p2, Lcom/google/android/gms/vision/barcode/Barcode;->contactInfo:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    .line 694
    .local v0, "contactInfo":Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 695
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    iget-object v6, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    iget-object v6, v6, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->formattedName:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 698
    const-string v6, "name"

    iget-object v8, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    iget-object v8, v8, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->formattedName:Ljava/lang/String;

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    :cond_0
    iget-object v6, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    iget-object v6, v6, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->last:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 701
    const-string v6, "phonetic_name"

    iget-object v8, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    iget-object v8, v8, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->last:Ljava/lang/String;

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    :cond_1
    iget-object v5, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->phones:[Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    .line 704
    .local v5, "phoneList":[Lcom/google/android/gms/vision/barcode/Barcode$Phone;
    if-eqz v5, :cond_2

    .line 705
    array-length v8, v5

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v4, v5, v6

    .line 706
    .local v4, "phoneInfo":Lcom/google/android/gms/vision/barcode/Barcode$Phone;
    const-string v9, "phone"

    iget-object v10, v4, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->number:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 710
    .end local v4    # "phoneInfo":Lcom/google/android/gms/vision/barcode/Barcode$Phone;
    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->emails:[Lcom/google/android/gms/vision/barcode/Barcode$Email;

    .line 711
    .local v2, "emailList":[Lcom/google/android/gms/vision/barcode/Barcode$Email;
    if-eqz v2, :cond_3

    .line 712
    array-length v8, v2

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v1, v2, v6

    .line 713
    .local v1, "email":Lcom/google/android/gms/vision/barcode/Barcode$Email;
    const-string v9, "email"

    iget-object v10, v1, Lcom/google/android/gms/vision/barcode/Barcode$Email;->address:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 717
    .end local v1    # "email":Lcom/google/android/gms/vision/barcode/Barcode$Email;
    :cond_3
    const-string v6, "phone_type"

    const/4 v8, 0x3

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 718
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 720
    iput-boolean v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mIsImportContact:Z

    .line 721
    return-void
.end method

.method private BarcodeImportContacts(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 680
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/barcode/BarCodeDialog;->mIsImportContact:Z

    .line 681
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    const-string v1, "phone_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 685
    iget-object v1, p0, Lcom/android/camera/barcode/BarCodeDialog;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 686
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/barcode/BarCodeDialog;->mIsImportContact:Z

    .line 687
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/barcode/BarCodeDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeDialog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeDialog;->barcode_dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/barcode/BarCodeDialog;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeDialog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeDialog;->mController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/barcode/BarCodeDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/camera/barcode/BarCodeDialog;->BarcodeImportContacts(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/camera/barcode/BarCodeDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/camera/barcode/BarCodeDialog;->mIsImportPhone:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/camera/barcode/BarCodeDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/camera/barcode/BarCodeDialog;->addPhoneToContact(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/camera/barcode/BarCodeDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/camera/barcode/BarCodeDialog;->mIsImportEmail:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/camera/barcode/BarCodeDialog;Lcom/google/android/gms/vision/barcode/Barcode$Email;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeDialog;
    .param p1, "x1"    # Lcom/google/android/gms/vision/barcode/Barcode$Email;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/camera/barcode/BarCodeDialog;->addEmailToContact(Lcom/google/android/gms/vision/barcode/Barcode$Email;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/barcode/BarCodeDialog;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeDialog;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/camera/barcode/BarCodeDialog;->showTextActivity(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/barcode/BarCodeDialog;)Lcom/android/camera/barcode/WifiAdmin;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeDialog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeDialog;->wifiAdmin:Lcom/android/camera/barcode/WifiAdmin;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/barcode/BarCodeDialog;Lcom/android/camera/barcode/WifiAdmin;)Lcom/android/camera/barcode/WifiAdmin;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeDialog;
    .param p1, "x1"    # Lcom/android/camera/barcode/WifiAdmin;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/camera/barcode/BarCodeDialog;->wifiAdmin:Lcom/android/camera/barcode/WifiAdmin;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/barcode/BarCodeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeDialog;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/camera/barcode/BarCodeDialog;->mIsImportContact:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/barcode/BarCodeDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/camera/barcode/BarCodeDialog;->mIsImportContact:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/barcode/BarCodeDialog;Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeDialog;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/google/android/gms/vision/barcode/Barcode;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/camera/barcode/BarCodeDialog;->BarcodeImportContacts(Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/barcode/BarCodeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeDialog;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/camera/barcode/BarCodeDialog;->mIsImportCalendar:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/barcode/BarCodeDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/camera/barcode/BarCodeDialog;->mIsImportCalendar:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/barcode/BarCodeDialog;Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeDialog;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/google/android/gms/vision/barcode/Barcode;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/camera/barcode/BarCodeDialog;->BarcodeImpoetCalendar(Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/barcode/BarCodeDialog;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeDialog;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/camera/barcode/BarCodeDialog;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/barcode/BarCodeDialog;Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode$Email;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/barcode/BarCodeDialog;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/google/android/gms/vision/barcode/Barcode$Email;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/camera/barcode/BarCodeDialog;->BarCodeImportEmail(Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode$Email;)V

    return-void
.end method

.method private addEmailToContact(Lcom/google/android/gms/vision/barcode/Barcode$Email;)V
    .locals 6
    .param p1, "email"    # Lcom/google/android/gms/vision/barcode/Barcode$Email;

    .prologue
    .line 985
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 986
    .local v3, "values":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/camera/barcode/BarCodeDialog;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 987
    .local v2, "rawContactUri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 989
    .local v0, "rawContactId":J
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 990
    const-string v4, "raw_contact_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 991
    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    const-string v4, "data1"

    iget-object v5, p1, Lcom/google/android/gms/vision/barcode/Barcode$Email;->address:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const-string v4, "data2"

    iget v5, p1, Lcom/google/android/gms/vision/barcode/Barcode$Email;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 994
    iget-object v4, p0, Lcom/android/camera/barcode/BarCodeDialog;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 996
    return-void
.end method

.method private addPhoneToContact(Ljava/lang/String;)V
    .locals 13
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 533
    const-wide/16 v10, -0x1

    .line 534
    .local v10, "id":J
    const/4 v7, 0x0

    .line 536
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "raw_contact_id"

    aput-object v1, v6, v0

    .line 538
    .local v6, "columns":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeDialog;->mController:Lcom/android/camera/app/AppController;

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

    .line 542
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .line 548
    :cond_0
    if-eqz v7, :cond_1

    .line 549
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 550
    const/4 v7, 0x0

    .line 554
    .end local v6    # "columns":[Ljava/lang/String;
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_3

    .line 569
    :goto_1
    return-void

    .line 545
    :catch_0
    move-exception v8

    .line 546
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    if-eqz v7, :cond_1

    .line 549
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 550
    const/4 v7, 0x0

    goto :goto_0

    .line 548
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 549
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 550
    const/4 v7, 0x0

    :cond_2
    throw v0

    .line 558
    :cond_3
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 559
    .local v12, "values":Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeDialog;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 560
    .local v9, "rawContactUri":Landroid/net/Uri;
    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 562
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 563
    const-string v0, "raw_contact_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 564
    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v0, "data1"

    invoke-virtual {v12, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v0, "data2"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 567
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeDialog;->mController:Lcom/android/camera/app/AppController;

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
    .line 882
    invoke-direct {p0, p1}, Lcom/android/camera/barcode/BarCodeDialog;->checkCalendarAccount(Landroid/content/Context;)I

    move-result v0

    .line 883
    .local v0, "oldId":I
    if-ltz v0, :cond_0

    .line 886
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

    .line 891
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/camera/barcode/BarCodeDialog;->CALENDER_URL:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 893
    .local v7, "userCursor":Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 904
    if-eqz v7, :cond_0

    .line 905
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v8

    .line 901
    :cond_1
    :goto_0
    return v0

    .line 896
    :cond_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 897
    .local v6, "count":I
    if-lez v6, :cond_3

    .line 898
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 899
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 904
    if-eqz v7, :cond_1

    .line 905
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 904
    :cond_3
    if-eqz v7, :cond_4

    .line 905
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    .line 901
    goto :goto_0

    .line 904
    .end local v6    # "count":I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 905
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private getResourceString(I)Ljava/lang/String;
    .locals 2
    .param p1, "stringId"    # I

    .prologue
    .line 1009
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/barcode/BarCodeDialog;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1012
    :goto_0
    return-object v1

    .line 1010
    :catch_0
    move-exception v0

    .line 1012
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

    .line 572
    packed-switch p1, :pswitch_data_0

    .line 620
    :goto_0
    :pswitch_0
    return-void

    .line 574
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 575
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 578
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 579
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 582
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 583
    const v0, 0x7f080028

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 586
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 587
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 590
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 591
    const v0, 0x7f080026

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 594
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 595
    const v0, 0x7f08002f

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 598
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 599
    const v0, 0x7f080024

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 602
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 603
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 606
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 607
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 610
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 611
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 614
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 615
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 572
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

    .line 623
    packed-switch p1, :pswitch_data_0

    .line 671
    :goto_0
    :pswitch_0
    return-void

    .line 625
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 626
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 629
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 630
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 633
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 634
    const v0, 0x7f080023

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 637
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 638
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 641
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 642
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 645
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 646
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 649
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 650
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 653
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 654
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 657
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 658
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 661
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 662
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 665
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 666
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 623
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
    .line 999
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1000
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "show_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1001
    const-string v1, "show_search_button"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1002
    iget-object v1, p0, Lcom/android/camera/barcode/BarCodeDialog;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v1

    const-class v2, Lcom/android/camera/barcode/BarcodeTextActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1003
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1004
    iget-object v1, p0, Lcom/android/camera/barcode/BarCodeDialog;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 1005
    return-void
.end method


# virtual methods
.method public addCalendarEvent(Landroid/content/Context;Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "barcode"    # Lcom/google/android/gms/vision/barcode/Barcode;

    .prologue
    .line 911
    if-nez p1, :cond_1

    .line 948
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/barcode/BarCodeDialog;->checkAndAddCalendarAccount(Landroid/content/Context;)I

    move-result v0

    .line 915
    .local v0, "calId":I
    if-ltz v0, :cond_0

    .line 919
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 920
    .local v4, "event":Landroid/content/ContentValues;
    const-string v10, "title"

    iget-object v11, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v11, v11, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->summary:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const-string v10, "description"

    iget-object v11, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v11, v11, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->description:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    const-string v10, "calendar_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 923
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v6, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 925
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v10, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v10, v10, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->start:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    iget-object v10, v10, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->rawValue:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 927
    .local v8, "startMillionSeconds":J
    const-string v10, "dtstart"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
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

    .line 934
    .local v2, "endMillionSeconds":J
    const-string v10, "dtstart"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 935
    const-string v10, "dtend"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 939
    .end local v2    # "endMillionSeconds":J
    :goto_2
    const-string v10, "eventLocation"

    iget-object v11, p2, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iget-object v11, v11, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->location:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const-string v10, "hasAlarm"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 941
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    .line 943
    .local v7, "tz":Ljava/util/TimeZone;
    const-string v10, "eventTimezone"

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/android/camera/barcode/BarCodeDialog;->CALENDER_EVENT_URL:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 945
    .local v5, "newEvent":Landroid/net/Uri;
    if-nez v5, :cond_0

    goto/16 :goto_0

    .line 928
    .end local v5    # "newEvent":Landroid/net/Uri;
    .end local v7    # "tz":Ljava/util/TimeZone;
    :catch_0
    move-exception v1

    .line 929
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 936
    .end local v1    # "e":Ljava/text/ParseException;
    :catch_1
    move-exception v1

    .line 937
    .restart local v1    # "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_2
.end method

.method public addContacts(Landroid/app/Activity;Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;)V
    .locals 18
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "info"    # Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    .prologue
    .line 747
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 748
    .local v12, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 749
    .local v10, "rawContactUri":Landroid/net/Uri;
    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 751
    .local v8, "rawContactId":J
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 752
    const-string v13, "raw_contact_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 753
    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/name"

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v13, "data2"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    iget-object v14, v14, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->formattedName:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 758
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->phones:[Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    .line 759
    .local v7, "phoneList":[Lcom/google/android/gms/vision/barcode/Barcode$Phone;
    if-eqz v7, :cond_0

    .line 760
    array-length v14, v7

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v14, :cond_0

    aget-object v6, v7, v13

    .line 761
    .local v6, "phoneInfo":Lcom/google/android/gms/vision/barcode/Barcode$Phone;
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 762
    const-string v15, "raw_contact_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 763
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string v15, "data1"

    iget-object v0, v6, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->number:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v15, "data2"

    iget v0, v6, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->type:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 766
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 760
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 771
    .end local v6    # "phoneInfo":Lcom/google/android/gms/vision/barcode/Barcode$Phone;
    :cond_0
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->emails:[Lcom/google/android/gms/vision/barcode/Barcode$Email;

    .line 772
    .local v5, "emailList":[Lcom/google/android/gms/vision/barcode/Barcode$Email;
    if-eqz v5, :cond_1

    .line 773
    array-length v14, v5

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_1

    aget-object v4, v5, v13

    .line 774
    .local v4, "email":Lcom/google/android/gms/vision/barcode/Barcode$Email;
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 775
    const-string v15, "raw_contact_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 776
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string v15, "data1"

    iget-object v0, v4, Lcom/google/android/gms/vision/barcode/Barcode$Email;->address:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v15, "data2"

    iget v0, v4, Lcom/google/android/gms/vision/barcode/Barcode$Email;->type:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 779
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 773
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 784
    .end local v4    # "email":Lcom/google/android/gms/vision/barcode/Barcode$Email;
    :cond_1
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->addresses:[Lcom/google/android/gms/vision/barcode/Barcode$Address;

    .line 785
    .local v3, "addressList":[Lcom/google/android/gms/vision/barcode/Barcode$Address;
    if-eqz v3, :cond_3

    .line 786
    array-length v14, v3

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v14, :cond_3

    aget-object v2, v3, v13

    .line 787
    .local v2, "address":Lcom/google/android/gms/vision/barcode/Barcode$Address;
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 788
    iget-object v15, v2, Lcom/google/android/gms/vision/barcode/Barcode$Address;->addressLines:[Ljava/lang/String;

    if-eqz v15, :cond_2

    iget-object v15, v2, Lcom/google/android/gms/vision/barcode/Barcode$Address;->addressLines:[Ljava/lang/String;

    array-length v15, v15

    if-lez v15, :cond_2

    .line 789
    const-string v15, "raw_contact_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 790
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const-string v15, "data1"

    iget-object v0, v2, Lcom/google/android/gms/vision/barcode/Barcode$Address;->addressLines:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v15, "data2"

    iget v0, v2, Lcom/google/android/gms/vision/barcode/Barcode$Address;->type:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 793
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 786
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 799
    .end local v2    # "address":Lcom/google/android/gms/vision/barcode/Barcode$Address;
    :cond_3
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->organization:Ljava/lang/String;

    if-eqz v13, :cond_4

    .line 800
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 801
    const-string v13, "raw_contact_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 802
    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/organization"

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const-string v13, "data1"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->organization:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 808
    :cond_4
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->title:Ljava/lang/String;

    if-eqz v13, :cond_5

    .line 809
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 810
    const-string v13, "raw_contact_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 811
    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/organization"

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string v13, "data4"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->title:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 817
    :cond_5
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->urls:[Ljava/lang/String;

    if-eqz v13, :cond_6

    .line 818
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->urls:[Ljava/lang/String;

    array-length v15, v14

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v15, :cond_6

    aget-object v11, v14, v13

    .line 819
    .local v11, "url":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 820
    const-string v16, "raw_contact_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 821
    const-string v16, "mimetype"

    const-string v17, "vnd.android.cursor.item/website"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v16, "data1"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v16, "data2"

    const/16 v17, 0x5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 824
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 818
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 828
    .end local v11    # "url":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method public getAlertBuilder(Lcom/google/android/gms/vision/barcode/Barcode;)Landroid/app/AlertDialog$Builder;
    .locals 12
    .param p1, "barcode"    # Lcom/google/android/gms/vision/barcode/Barcode;

    .prologue
    const/4 v11, 0x0

    .line 83
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 84
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040026

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mDialogView:Landroid/view/View;

    .line 85
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mDialogView:Landroid/view/View;

    const v8, 0x7f0f00bf

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mBarCodeTextView:Landroid/widget/TextView;

    .line 87
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mDialogView:Landroid/view/View;

    const v8, 0x7f0f00be

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->barcode_title_text2:Landroid/widget/TextView;

    .line 89
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mDialogView:Landroid/view/View;

    const v8, 0x7f0f00c0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 90
    .local v5, "secondBT":Landroid/widget/Button;
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mDialogView:Landroid/view/View;

    const v8, 0x7f0f00c1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 92
    .local v6, "thirdBT":Landroid/widget/Button;
    iget v7, p1, Lcom/google/android/gms/vision/barcode/Barcode;->valueFormat:I

    invoke-direct {p0, v7, v5}, Lcom/android/camera/barcode/BarCodeDialog;->setSecondButtonString(ILandroid/widget/Button;)V

    .line 93
    new-instance v7, Lcom/android/camera/barcode/BarCodeDialog$BarcodeSecondClickListener;

    invoke-direct {v7, p0, p1}, Lcom/android/camera/barcode/BarCodeDialog$BarcodeSecondClickListener;-><init>(Lcom/android/camera/barcode/BarCodeDialog;Lcom/google/android/gms/vision/barcode/Barcode;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget v7, p1, Lcom/google/android/gms/vision/barcode/Barcode;->valueFormat:I

    invoke-direct {p0, v7, v6}, Lcom/android/camera/barcode/BarCodeDialog;->setThirdButtonString(ILandroid/widget/Button;)V

    .line 96
    new-instance v7, Lcom/android/camera/barcode/BarCodeDialog$BarcodeThirdClickListener;

    invoke-direct {v7, p0, p1}, Lcom/android/camera/barcode/BarCodeDialog$BarcodeThirdClickListener;-><init>(Lcom/android/camera/barcode/BarCodeDialog;Lcom/google/android/gms/vision/barcode/Barcode;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p1, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    .line 105
    .local v0, "barValue":Ljava/lang/String;
    iget v7, p1, Lcom/google/android/gms/vision/barcode/Barcode;->valueFormat:I

    packed-switch v7, :pswitch_data_0

    .line 178
    :pswitch_0
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mBarCodeTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mBarCodeTextView:Landroid/widget/TextView;

    new-instance v8, Lcom/android/camera/barcode/BarCodeDialog$BarcodeClickListener;

    invoke-direct {v8, p0, p1}, Lcom/android/camera/barcode/BarCodeDialog$BarcodeClickListener;-><init>(Lcom/android/camera/barcode/BarCodeDialog;Lcom/google/android/gms/vision/barcode/Barcode;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/camera/barcode/BarCodeDialog;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v8}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    .line 194
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/camera/barcode/BarCodeDialog;->mDialogView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 196
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    return-object v7

    .line 107
    :pswitch_1
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->barcode_title_text2:Landroid/widget/TextView;

    const v8, 0x7f080032

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object v7, p1, Lcom/google/android/gms/vision/barcode/Barcode;->url:Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;

    if-eqz v7, :cond_1

    iget-object v7, p1, Lcom/google/android/gms/vision/barcode/Barcode;->url:Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;

    iget-object v7, v7, Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;->url:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 109
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mBarCodeTextView:Landroid/widget/TextView;

    iget-object v8, p1, Lcom/google/android/gms/vision/barcode/Barcode;->url:Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;

    iget-object v8, v8, Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;->url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mBarCodeTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 115
    :pswitch_2
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->barcode_title_text2:Landroid/widget/TextView;

    const v8, 0x7f08002c

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mBarCodeTextView:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lcom/google/android/gms/vision/barcode/Barcode;->geoPoint:Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;

    iget-wide v10, v9, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->lat:D

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/google/android/gms/vision/barcode/Barcode;->geoPoint:Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;

    iget-wide v10, v9, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->lng:D

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    :pswitch_3
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->barcode_title_text2:Landroid/widget/TextView;

    const v8, 0x7f080031

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 121
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mBarCodeTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 124
    :pswitch_4
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->barcode_title_text2:Landroid/widget/TextView;

    const v8, 0x7f08002d

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 125
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mBarCodeTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 128
    :pswitch_5
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->barcode_title_text2:Landroid/widget/TextView;

    const v8, 0x7f08002f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mBarCodeTextView:Landroid/widget/TextView;

    iget-object v8, p1, Lcom/google/android/gms/vision/barcode/Barcode;->phone:Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    iget-object v8, v8, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->number:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 133
    :pswitch_6
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->barcode_title_text2:Landroid/widget/TextView;

    const v8, 0x7f080030

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 135
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mBarCodeTextView:Landroid/widget/TextView;

    iget-object v8, p1, Lcom/google/android/gms/vision/barcode/Barcode;->sms:Lcom/google/android/gms/vision/barcode/Barcode$Sms;

    iget-object v8, v8, Lcom/google/android/gms/vision/barcode/Barcode$Sms;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 138
    :pswitch_7
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->barcode_title_text2:Landroid/widget/TextView;

    const v8, 0x7f08002b

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mBarCodeTextView:Landroid/widget/TextView;

    iget-object v8, p1, Lcom/google/android/gms/vision/barcode/Barcode;->email:Lcom/google/android/gms/vision/barcode/Barcode$Email;

    iget-object v8, v8, Lcom/google/android/gms/vision/barcode/Barcode$Email;->address:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 143
    :pswitch_8
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->barcode_title_text2:Landroid/widget/TextView;

    const v8, 0x7f080033

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 145
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mBarCodeTextView:Landroid/widget/TextView;

    iget-object v8, p1, Lcom/google/android/gms/vision/barcode/Barcode;->wifi:Lcom/google/android/gms/vision/barcode/Barcode$WiFi;

    iget-object v8, v8, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 148
    :pswitch_9
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->barcode_title_text2:Landroid/widget/TextView;

    const v8, 0x7f08002a

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 150
    iget-object v7, p1, Lcom/google/android/gms/vision/barcode/Barcode;->contactInfo:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    iget-object v7, v7, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    if-eqz v7, :cond_2

    iget-object v7, p1, Lcom/google/android/gms/vision/barcode/Barcode;->contactInfo:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    iget-object v7, v7, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    iget-object v7, v7, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->formattedName:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p1, Lcom/google/android/gms/vision/barcode/Barcode;->contactInfo:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    iget-object v7, v7, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    iget-object v7, v7, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->formattedName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 151
    :cond_2
    iget-object v7, p1, Lcom/google/android/gms/vision/barcode/Barcode;->contactInfo:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    iget-object v7, v7, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->phones:[Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    if-eqz v7, :cond_0

    iget-object v7, p1, Lcom/google/android/gms/vision/barcode/Barcode;->contactInfo:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    iget-object v7, v7, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->phones:[Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    array-length v7, v7

    if-lez v7, :cond_0

    .line 152
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mBarCodeTextView:Landroid/widget/TextView;

    iget-object v8, p1, Lcom/google/android/gms/vision/barcode/Barcode;->contactInfo:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    iget-object v8, v8, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->phones:[Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    aget-object v8, v8, v11

    iget-object v8, v8, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->number:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 155
    :cond_3
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mBarCodeTextView:Landroid/widget/TextView;

    iget-object v8, p1, Lcom/google/android/gms/vision/barcode/Barcode;->contactInfo:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    iget-object v8, v8, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    iget-object v8, v8, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->formattedName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 159
    :pswitch_a
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->barcode_title_text2:Landroid/widget/TextView;

    const v8, 0x7f080029

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 160
    iget-object v2, p1, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    .line 161
    .local v2, "event":Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;
    iget-object v1, v2, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->start:Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;

    .line 163
    .local v1, "dateTime":Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;
    iget-object v7, v2, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->summary:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, v2, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->summary:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 164
    :cond_4
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mBarCodeTextView:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v1, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->year:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->month:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->day:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->hours:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->minutes:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 166
    :cond_5
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mBarCodeTextView:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v2, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->summary:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->year:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->month:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->day:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->hours:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->minutes:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 170
    .end local v1    # "dateTime":Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;
    .end local v2    # "event":Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;
    :pswitch_b
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->barcode_title_text2:Landroid/widget/TextView;

    const v8, 0x7f08002e

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 171
    iget-object v4, p1, Lcom/google/android/gms/vision/barcode/Barcode;->driverLicense:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    .line 173
    .local v4, "license":Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;
    iget-object v7, p0, Lcom/android/camera/barcode/BarCodeDialog;->mBarCodeTextView:Landroid/widget/TextView;

    const v8, 0x7f080025

    invoke-direct {p0, v8}, Lcom/android/camera/barcode/BarCodeDialog;->getResourceString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xe

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, v4, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->licenseNumber:Ljava/lang/String;

    aput-object v10, v9, v11

    const/4 v10, 0x1

    iget-object v11, v4, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressCity:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, v4, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressState:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, v4, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressStreet:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x4

    iget-object v11, v4, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->addressZip:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x5

    iget-object v11, v4, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->birthDate:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x6

    iget-object v11, v4, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->documentType:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x7

    iget-object v11, v4, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->expiryDate:Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x8

    iget-object v11, v4, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->firstName:Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0x9

    iget-object v11, v4, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->middleName:Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0xa

    iget-object v11, v4, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->lastName:Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0xb

    iget-object v11, v4, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->gender:Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0xc

    iget-object v11, v4, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->issueDate:Ljava/lang/String;

    aput-object v11, v9, v10

    const/16 v10, 0xd

    iget-object v11, v4, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->issuingCountry:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 105
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

.method public isShowing()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeDialog;->barcode_dialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeDialog;->barcode_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public showDialog()V
    .locals 12

    .prologue
    .line 199
    iget-object v9, p0, Lcom/android/camera/barcode/BarCodeDialog;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    if-eqz v9, :cond_1

    .line 200
    iget-object v9, p0, Lcom/android/camera/barcode/BarCodeDialog;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/barcode/BarCodeDialog;->barcode_dialog:Landroid/app/AlertDialog;

    .line 201
    iget-object v9, p0, Lcom/android/camera/barcode/BarCodeDialog;->barcode_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 203
    .local v7, "window":Landroid/view/Window;
    const/16 v9, 0x30

    invoke-virtual {v7, v9}, Landroid/view/Window;->setGravity(I)V

    .line 204
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 206
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v9, p0, Lcom/android/camera/barcode/BarCodeDialog;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    .line 207
    .local v8, "wm1":Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 208
    .local v1, "height1":I
    iget-object v9, p0, Lcom/android/camera/barcode/BarCodeDialog;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v6, v9, Landroid/util/DisplayMetrics;->density:F

    .line 209
    .local v6, "scale":F
    iget-object v9, p0, Lcom/android/camera/barcode/BarCodeDialog;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0900bc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    mul-float/2addr v9, v6

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v0, v9

    .line 211
    .local v0, "bottomHight":I
    const/4 v5, 0x0

    .line 213
    .local v5, "result":I
    iget-object v9, p0, Lcom/android/camera/barcode/BarCodeDialog;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 214
    .local v3, "res":Landroid/content/res/Resources;
    const-string v9, "navigation_bar_height"

    const-string v10, "dimen"

    const-string v11, "android"

    invoke-virtual {v3, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 215
    .local v4, "resourceId":I
    if-lez v4, :cond_0

    .line 216
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 223
    :cond_0
    invoke-virtual {v7, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 224
    iget-object v9, p0, Lcom/android/camera/barcode/BarCodeDialog;->barcode_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 226
    iget-object v9, p0, Lcom/android/camera/barcode/BarCodeDialog;->barcode_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/Window;->setDimAmount(F)V

    .line 228
    .end local v0    # "bottomHight":I
    .end local v1    # "height1":I
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "resourceId":I
    .end local v5    # "result":I
    .end local v6    # "scale":F
    .end local v7    # "window":Landroid/view/Window;
    .end local v8    # "wm1":Landroid/view/WindowManager;
    :cond_1
    return-void
.end method

.method public stopBarCode()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeDialog;->barcode_dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeDialog;->barcode_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeDialog;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/barcode/BarCodeDialog$1;

    invoke-direct {v1, p0}, Lcom/android/camera/barcode/BarCodeDialog$1;-><init>(Lcom/android/camera/barcode/BarCodeDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 73
    :cond_0
    return-void
.end method
