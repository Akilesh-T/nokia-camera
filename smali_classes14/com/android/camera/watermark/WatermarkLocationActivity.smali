.class public Lcom/android/camera/watermark/WatermarkLocationActivity;
.super Landroid/app/ListActivity;
.source "WatermarkLocationActivity.java"

# interfaces
.implements Lcom/android/camera/watermark/TencentWebService$POIResponse;


# static fields
.field public static final LATITUDE:Ljava/lang/String; = "LATITUDE"

.field public static final LOCATION:Ljava/lang/String; = "LOCATION"

.field public static final LONGITUDE:Ljava/lang/String; = "LONGITUDE"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mLatitude:D

.field private mLongitude:D

.field private mPOIs:[Ljava/lang/String;

.field private mPaused:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSecureMode:Z

.field private final mShutdownReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "WLActivity"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/watermark/WatermarkLocationActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mPaused:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mSecureMode:Z

    .line 38
    new-instance v0, Lcom/android/camera/watermark/WatermarkLocationActivity$1;

    invoke-direct {v0, p0}, Lcom/android/camera/watermark/WatermarkLocationActivity$1;-><init>(Lcom/android/camera/watermark/WatermarkLocationActivity;)V

    iput-object v0, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private initSecureMode()V
    .locals 5

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/camera/watermark/WatermarkLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {p0}, Lcom/android/camera/watermark/WatermarkLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/camera/watermark/WatermarkLocationActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 66
    .local v2, "win":Landroid/view/Window;
    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "filter_screen_off":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/camera/watermark/WatermarkLocationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, "filter_user_unlock":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/camera/watermark/WatermarkLocationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mSecureMode:Z

    .line 82
    .end local v0    # "filter_screen_off":Landroid/content/IntentFilter;
    .end local v1    # "filter_user_unlock":Landroid/content/IntentFilter;
    .end local v2    # "win":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method private isLocationExisted()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/android/camera/watermark/WatermarkLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LATITUDE"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mLatitude:D

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/watermark/WatermarkLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LONGITUDE"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mLongitude:D

    .line 87
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/camera/watermark/WatermarkLocationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    invoke-direct {p0}, Lcom/android/camera/watermark/WatermarkLocationActivity;->isLocationExisted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lcom/android/camera/watermark/WatermarkLocationActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Can\'t find location information!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/camera/watermark/WatermarkLocationActivity;->finish()V

    .line 59
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/watermark/WatermarkLocationActivity;->initSecureMode()V

    .line 55
    const v0, 0x7f080259

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/camera/watermark/WatermarkLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080139

    .line 57
    invoke-virtual {p0, v1}, Lcom/android/camera/watermark/WatermarkLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 58
    invoke-static {}, Lcom/android/camera/watermark/TencentWebService;->getInstance()Lcom/android/camera/watermark/TencentWebService;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mLatitude:D

    iget-wide v4, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mLongitude:D

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/watermark/TencentWebService;->requestPOI(DDLcom/android/camera/watermark/TencentWebService$POIResponse;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mSecureMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/watermark/WatermarkLocationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 118
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 122
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 123
    iget-object v1, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mPOIs:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mPOIs:[Ljava/lang/String;

    array-length v1, v1

    if-ge p3, v1, :cond_0

    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "LOCATION"

    iget-object v2, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mPOIs:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/watermark/WatermarkLocationActivity;->setResult(ILandroid/content/Intent;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/camera/watermark/WatermarkLocationActivity;->finish()V

    .line 129
    .end local v0    # "data":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 98
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 95
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/watermark/WatermarkLocationActivity;->onBackPressed()V

    .line 96
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mPaused:Z

    .line 112
    return-void
.end method

.method public onResult(ILjava/util/List;)V
    .locals 3
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "lstPOI":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/watermark/WatermarkLocationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 136
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 138
    :pswitch_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mPOIs:[Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mPOIs:[Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 140
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mPOIs:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/watermark/WatermarkLocationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 146
    :pswitch_1
    const v0, 0x7f08029d

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 149
    :pswitch_2
    const v0, 0x7f08029e

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/watermark/WatermarkLocationActivity;->mPaused:Z

    .line 106
    return-void
.end method
