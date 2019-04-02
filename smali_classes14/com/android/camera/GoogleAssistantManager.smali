.class public Lcom/android/camera/GoogleAssistantManager;
.super Ljava/lang/Object;
.source "GoogleAssistantManager.java"


# static fields
.field private static final DUAL_SIGHT_MODE:Ljava/lang/String; = "DUAL_CAMERA"

.field private static final INTENT_EXTRA_CAMERA_MODE:Ljava/lang/String; = "android.intent.extra.CAMERA_MODE"

.field private static final INTENT_EXTRA_CAMERA_OPEN_ONLY:Ljava/lang/String; = "android.intent.extra.CAMERA_OPEN_ONLY"

.field private static final INTENT_EXTRA_TIMER_DURATION_SECONDS:Ljava/lang/String; = "android.intent.extra.TIMER_DURATION_SECONDS"

.field private static final INTENT_EXTRA_USE_FRONT_CAMERA:Ljava/lang/String; = "android.intent.extra.USE_FRONT_CAMERA"

.field private static mInstance:Lcom/android/camera/GoogleAssistantManager;


# instance fields
.field private mIsCheckingAccount:Z

.field private mLastIntentCaptureHashCode:I

.field private mLastIntentVideoHashCode:I

.field private mNeedExecuteAction:Z

.field private mRecordVideo:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mStreamingState:Ljava/lang/String;

.field private mTakePicture:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTimer:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mUseDualSight:Z

.field private mUseFrontCamera:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/GoogleAssistantManager;->mInstance:Lcom/android/camera/GoogleAssistantManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/GoogleAssistantManager;->mTakePicture:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/GoogleAssistantManager;->mRecordVideo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/GoogleAssistantManager;->mTimer:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    iput v1, p0, Lcom/android/camera/GoogleAssistantManager;->mLastIntentVideoHashCode:I

    .line 35
    iput v1, p0, Lcom/android/camera/GoogleAssistantManager;->mLastIntentCaptureHashCode:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/GoogleAssistantManager;->mStreamingState:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/android/camera/GoogleAssistantManager;->mIsCheckingAccount:Z

    .line 40
    iput-boolean v1, p0, Lcom/android/camera/GoogleAssistantManager;->mNeedExecuteAction:Z

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/android/camera/GoogleAssistantManager;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/camera/GoogleAssistantManager;->mInstance:Lcom/android/camera/GoogleAssistantManager;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/android/camera/GoogleAssistantManager;

    invoke-direct {v0}, Lcom/android/camera/GoogleAssistantManager;-><init>()V

    sput-object v0, Lcom/android/camera/GoogleAssistantManager;->mInstance:Lcom/android/camera/GoogleAssistantManager;

    .line 47
    :cond_0
    sget-object v0, Lcom/android/camera/GoogleAssistantManager;->mInstance:Lcom/android/camera/GoogleAssistantManager;

    return-object v0
.end method


# virtual methods
.method public finishOperation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    iput-boolean v1, p0, Lcom/android/camera/GoogleAssistantManager;->mNeedExecuteAction:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/GoogleAssistantManager;->mStreamingState:Ljava/lang/String;

    .line 87
    iput-boolean v1, p0, Lcom/android/camera/GoogleAssistantManager;->mIsCheckingAccount:Z

    .line 88
    return-void
.end method

.method public getStreamingState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/GoogleAssistantManager;->mStreamingState:Ljava/lang/String;

    return-object v0
.end method

.method public getTimer()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/GoogleAssistantManager;->mTimer:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public isCheckingAccount()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/camera/GoogleAssistantManager;->mIsCheckingAccount:Z

    return v0
.end method

.method public needExecuteGoogleAssistantAction()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/camera/GoogleAssistantManager;->mNeedExecuteAction:Z

    return v0
.end method

.method public setAndParseIntent(Landroid/content/Intent;ZZ)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "capture"    # Z
    .param p3, "hasShownTutorial"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    iget v2, p0, Lcom/android/camera/GoogleAssistantManager;->mLastIntentVideoHashCode:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/camera/GoogleAssistantManager;->mLastIntentCaptureHashCode:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 59
    iput-boolean v0, p0, Lcom/android/camera/GoogleAssistantManager;->mNeedExecuteAction:Z

    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.USE_FRONT_CAMERA"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/GoogleAssistantManager;->mUseFrontCamera:Z

    .line 61
    const-string v2, "DUAL_CAMERA"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android.intent.extra.CAMERA_MODE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/GoogleAssistantManager;->mUseDualSight:Z

    .line 62
    if-eqz p2, :cond_2

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iput v2, p0, Lcom/android/camera/GoogleAssistantManager;->mLastIntentCaptureHashCode:I

    .line 64
    iget-object v2, p0, Lcom/android/camera/GoogleAssistantManager;->mTimer:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android.intent.extra.TIMER_DURATION_SECONDS"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 65
    iget-object v2, p0, Lcom/android/camera/GoogleAssistantManager;->mTakePicture:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android.intent.extra.CAMERA_OPEN_ONLY"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 66
    if-nez p3, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/camera/GoogleAssistantManager;->mTakePicture:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 78
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 65
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iput v2, p0, Lcom/android/camera/GoogleAssistantManager;->mLastIntentVideoHashCode:I

    .line 71
    if-nez p3, :cond_3

    .line 72
    iget-object v0, p0, Lcom/android/camera/GoogleAssistantManager;->mRecordVideo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    .line 74
    :cond_3
    iget-object v1, p0, Lcom/android/camera/GoogleAssistantManager;->mRecordVideo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1
.end method

.method public setAndParseIntent(Landroid/content/Intent;ZZLjava/lang/String;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "capture"    # Z
    .param p3, "hasShownTutorial"    # Z
    .param p4, "streamingState"    # Ljava/lang/String;

    .prologue
    .line 51
    iget v0, p0, Lcom/android/camera/GoogleAssistantManager;->mLastIntentVideoHashCode:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/GoogleAssistantManager;->mLastIntentCaptureHashCode:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 52
    iput-object p4, p0, Lcom/android/camera/GoogleAssistantManager;->mStreamingState:Ljava/lang/String;

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/GoogleAssistantManager;->setAndParseIntent(Landroid/content/Intent;ZZ)V

    .line 55
    :cond_0
    return-void
.end method

.method public setIsCheckingAccount(Z)V
    .locals 0
    .param p1, "checking"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/camera/GoogleAssistantManager;->mIsCheckingAccount:Z

    .line 120
    return-void
.end method

.method public showRecordVideo()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/GoogleAssistantManager;->mRecordVideo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public showTakePicture()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/GoogleAssistantManager;->mTakePicture:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public useDualSight()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/camera/GoogleAssistantManager;->mUseDualSight:Z

    return v0
.end method

.method public useFrontCamera()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/camera/GoogleAssistantManager;->mUseFrontCamera:Z

    return v0
.end method
