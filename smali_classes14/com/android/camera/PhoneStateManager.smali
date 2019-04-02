.class public Lcom/android/camera/PhoneStateManager;
.super Ljava/lang/Object;
.source "PhoneStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PhoneStateManager$PhoneStateChangeListener;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private final mHandler:Landroid/os/Handler;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/PhoneStateManager$PhoneStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneBusyDialog:Landroid/app/AlertDialog;

.field private mPhoneState:I

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Landroid/os/Handler;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PhoneStateManager;->mPhoneState:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhoneStateManager;->mListeners:Ljava/util/List;

    .line 28
    new-instance v0, Lcom/android/camera/PhoneStateManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/PhoneStateManager$1;-><init>(Lcom/android/camera/PhoneStateManager;)V

    iput-object v0, p0, Lcom/android/camera/PhoneStateManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 65
    iput-object p1, p0, Lcom/android/camera/PhoneStateManager;->mActivity:Lcom/android/camera/CameraActivity;

    .line 66
    iput-object p2, p0, Lcom/android/camera/PhoneStateManager;->mHandler:Landroid/os/Handler;

    .line 67
    invoke-virtual {p1}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/camera/PhoneStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PhoneStateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhoneStateManager;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/camera/PhoneStateManager;->mPhoneState:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/PhoneStateManager;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhoneStateManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/PhoneStateManager;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/PhoneStateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhoneStateManager;
    .param p1, "x1"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/camera/PhoneStateManager;->updatePhoneState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/PhoneStateManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhoneStateManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/PhoneStateManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updatePhoneState(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 101
    iget v1, p0, Lcom/android/camera/PhoneStateManager;->mPhoneState:I

    if-ne v1, p1, :cond_1

    .line 106
    :cond_0
    return-void

    .line 102
    :cond_1
    iput p1, p0, Lcom/android/camera/PhoneStateManager;->mPhoneState:I

    .line 103
    iget-object v1, p0, Lcom/android/camera/PhoneStateManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PhoneStateManager$PhoneStateChangeListener;

    .line 104
    .local v0, "listener":Lcom/android/camera/PhoneStateManager$PhoneStateChangeListener;
    iget v2, p0, Lcom/android/camera/PhoneStateManager;->mPhoneState:I

    invoke-interface {v0, v2}, Lcom/android/camera/PhoneStateManager$PhoneStateChangeListener;->onPhoneStateChanged(I)V

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/android/camera/PhoneStateManager$PhoneStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/PhoneStateManager$PhoneStateChangeListener;

    .prologue
    .line 53
    return-void
.end method

.method public isPhoneIdle()Z
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/PhoneStateManager;->mPhoneState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneOffHook()Z
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lcom/android/camera/PhoneStateManager;->mPhoneState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneRinging()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 97
    iget v1, p0, Lcom/android/camera/PhoneStateManager;->mPhoneState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public removeAllListener()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
