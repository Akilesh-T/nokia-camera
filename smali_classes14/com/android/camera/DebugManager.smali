.class public Lcom/android/camera/DebugManager;
.super Ljava/lang/Object;
.source "DebugManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/DebugManager$DEBUG_STATE;
    }
.end annotation


# static fields
.field private static sDebugManager:Lcom/android/camera/DebugManager;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mState:Lcom/android/camera/DebugManager$DEBUG_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/camera/DebugManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/android/camera/DebugManager$DEBUG_STATE;->START:Lcom/android/camera/DebugManager$DEBUG_STATE;

    iput-object v0, p0, Lcom/android/camera/DebugManager;->mState:Lcom/android/camera/DebugManager$DEBUG_STATE;

    .line 29
    sget-object v0, Lcom/android/camera/DebugManager$DEBUG_STATE;->START:Lcom/android/camera/DebugManager$DEBUG_STATE;

    iput-object v0, p0, Lcom/android/camera/DebugManager;->mState:Lcom/android/camera/DebugManager$DEBUG_STATE;

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/android/camera/DebugManager;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/android/camera/DebugManager;->sDebugManager:Lcom/android/camera/DebugManager;

    if-nez v0, :cond_0

    .line 15
    sget-object v1, Lcom/android/camera/DebugManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 16
    :try_start_0
    new-instance v0, Lcom/android/camera/DebugManager;

    invoke-direct {v0}, Lcom/android/camera/DebugManager;-><init>()V

    sput-object v0, Lcom/android/camera/DebugManager;->sDebugManager:Lcom/android/camera/DebugManager;

    .line 17
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_0
    sget-object v0, Lcom/android/camera/DebugManager;->sDebugManager:Lcom/android/camera/DebugManager;

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/android/camera/DebugManager$1;->$SwitchMap$com$android$camera$DebugManager$DEBUG_STATE:[I

    iget-object v1, p0, Lcom/android/camera/DebugManager;->mState:Lcom/android/camera/DebugManager$DEBUG_STATE;

    invoke-virtual {v1}, Lcom/android/camera/DebugManager$DEBUG_STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 92
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 86
    :pswitch_0
    const-string v0, "START"

    goto :goto_0

    .line 88
    :pswitch_1
    const-string v0, "YUV_DONE"

    goto :goto_0

    .line 90
    :pswitch_2
    const-string v0, "JPEG_DONE"

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public gotoNext()V
    .locals 2

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->DEBUG_FACEPP_3A:Z

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 70
    :cond_0
    sget-object v0, Lcom/android/camera/DebugManager$1;->$SwitchMap$com$android$camera$DebugManager$DEBUG_STATE:[I

    iget-object v1, p0, Lcom/android/camera/DebugManager;->mState:Lcom/android/camera/DebugManager$DEBUG_STATE;

    invoke-virtual {v1}, Lcom/android/camera/DebugManager$DEBUG_STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    sget-object v0, Lcom/android/camera/DebugManager$DEBUG_STATE;->YUV_DONE:Lcom/android/camera/DebugManager$DEBUG_STATE;

    iput-object v0, p0, Lcom/android/camera/DebugManager;->mState:Lcom/android/camera/DebugManager$DEBUG_STATE;

    goto :goto_0

    .line 75
    :pswitch_1
    sget-object v0, Lcom/android/camera/DebugManager$DEBUG_STATE;->JPEG_DONE:Lcom/android/camera/DebugManager$DEBUG_STATE;

    iput-object v0, p0, Lcom/android/camera/DebugManager;->mState:Lcom/android/camera/DebugManager$DEBUG_STATE;

    goto :goto_0

    .line 78
    :pswitch_2
    sget-object v0, Lcom/android/camera/DebugManager$DEBUG_STATE;->START:Lcom/android/camera/DebugManager$DEBUG_STATE;

    iput-object v0, p0, Lcom/android/camera/DebugManager;->mState:Lcom/android/camera/DebugManager$DEBUG_STATE;

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->DEBUG_FACEPP_3A:Z

    return v0
.end method

.method public isJPEGMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 60
    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil;->DEBUG_FACEPP_3A:Z

    if-nez v1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/DebugManager;->mState:Lcom/android/camera/DebugManager$DEBUG_STATE;

    sget-object v2, Lcom/android/camera/DebugManager$DEBUG_STATE;->YUV_DONE:Lcom/android/camera/DebugManager$DEBUG_STATE;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStartMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 33
    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil;->DEBUG_FACEPP_3A:Z

    if-nez v1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/DebugManager;->mState:Lcom/android/camera/DebugManager$DEBUG_STATE;

    sget-object v2, Lcom/android/camera/DebugManager$DEBUG_STATE;->START:Lcom/android/camera/DebugManager$DEBUG_STATE;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTakePicture()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 40
    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil;->DEBUG_FACEPP_3A:Z

    if-nez v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/android/camera/DebugManager;->mState:Lcom/android/camera/DebugManager$DEBUG_STATE;

    sget-object v2, Lcom/android/camera/DebugManager$DEBUG_STATE;->JPEG_DONE:Lcom/android/camera/DebugManager$DEBUG_STATE;

    if-ne v1, v2, :cond_2

    .line 44
    sget-object v1, Lcom/android/camera/DebugManager$DEBUG_STATE;->START:Lcom/android/camera/DebugManager$DEBUG_STATE;

    iput-object v1, p0, Lcom/android/camera/DebugManager;->mState:Lcom/android/camera/DebugManager$DEBUG_STATE;

    .line 45
    :cond_2
    iget-object v1, p0, Lcom/android/camera/DebugManager;->mState:Lcom/android/camera/DebugManager$DEBUG_STATE;

    sget-object v2, Lcom/android/camera/DebugManager$DEBUG_STATE;->START:Lcom/android/camera/DebugManager$DEBUG_STATE;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isYUVMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 53
    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil;->DEBUG_FACEPP_3A:Z

    if-nez v1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/DebugManager;->mState:Lcom/android/camera/DebugManager$DEBUG_STATE;

    sget-object v2, Lcom/android/camera/DebugManager$DEBUG_STATE;->START:Lcom/android/camera/DebugManager$DEBUG_STATE;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/camera/DebugManager;->mState:Lcom/android/camera/DebugManager$DEBUG_STATE;

    sget-object v2, Lcom/android/camera/DebugManager$DEBUG_STATE;->JPEG_DONE:Lcom/android/camera/DebugManager$DEBUG_STATE;

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
