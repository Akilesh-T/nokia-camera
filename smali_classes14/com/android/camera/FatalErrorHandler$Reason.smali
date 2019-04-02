.class public final enum Lcom/android/camera/FatalErrorHandler$Reason;
.super Ljava/lang/Enum;
.source "FatalErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FatalErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/FatalErrorHandler$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/FatalErrorHandler$Reason;

.field public static final enum CAMERA_DISABLED_BY_SECURITY_POLICY:Lcom/android/camera/FatalErrorHandler$Reason;

.field public static final enum CAMERA_HAL_FAILED:Lcom/android/camera/FatalErrorHandler$Reason;

.field public static final enum CANNOT_CONNECT_TO_CAMERA:Lcom/android/camera/FatalErrorHandler$Reason;

.field public static final enum MEDIA_STORAGE_FAILURE:Lcom/android/camera/FatalErrorHandler$Reason;


# instance fields
.field private final mDialogMsgId:I

.field private final mFeedbackMsgId:I

.field private final mFinishActivity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const v4, 0x7f080094

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 36
    new-instance v0, Lcom/android/camera/FatalErrorHandler$Reason;

    const-string v1, "CANNOT_CONNECT_TO_CAMERA"

    const v3, 0x7f08008b

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/FatalErrorHandler$Reason;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/android/camera/FatalErrorHandler$Reason;->CANNOT_CONNECT_TO_CAMERA:Lcom/android/camera/FatalErrorHandler$Reason;

    .line 40
    new-instance v6, Lcom/android/camera/FatalErrorHandler$Reason;

    const-string v7, "CAMERA_HAL_FAILED"

    const v9, 0x7f08008b

    move v8, v5

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/camera/FatalErrorHandler$Reason;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/android/camera/FatalErrorHandler$Reason;->CAMERA_HAL_FAILED:Lcom/android/camera/FatalErrorHandler$Reason;

    .line 44
    new-instance v6, Lcom/android/camera/FatalErrorHandler$Reason;

    const-string v7, "CAMERA_DISABLED_BY_SECURITY_POLICY"

    const v9, 0x7f08008a

    move v8, v12

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/camera/FatalErrorHandler$Reason;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/android/camera/FatalErrorHandler$Reason;->CAMERA_DISABLED_BY_SECURITY_POLICY:Lcom/android/camera/FatalErrorHandler$Reason;

    .line 48
    new-instance v6, Lcom/android/camera/FatalErrorHandler$Reason;

    const-string v7, "MEDIA_STORAGE_FAILURE"

    const v9, 0x7f08008c

    const v10, 0x7f080095

    move v8, v13

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/android/camera/FatalErrorHandler$Reason;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/android/camera/FatalErrorHandler$Reason;->MEDIA_STORAGE_FAILURE:Lcom/android/camera/FatalErrorHandler$Reason;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/FatalErrorHandler$Reason;

    sget-object v1, Lcom/android/camera/FatalErrorHandler$Reason;->CANNOT_CONNECT_TO_CAMERA:Lcom/android/camera/FatalErrorHandler$Reason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/FatalErrorHandler$Reason;->CAMERA_HAL_FAILED:Lcom/android/camera/FatalErrorHandler$Reason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/FatalErrorHandler$Reason;->CAMERA_DISABLED_BY_SECURITY_POLICY:Lcom/android/camera/FatalErrorHandler$Reason;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/camera/FatalErrorHandler$Reason;->MEDIA_STORAGE_FAILURE:Lcom/android/camera/FatalErrorHandler$Reason;

    aput-object v1, v0, v13

    sput-object v0, Lcom/android/camera/FatalErrorHandler$Reason;->$VALUES:[Lcom/android/camera/FatalErrorHandler$Reason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0
    .param p3, "dialogMsgId"    # I
    .param p4, "feedbackMsgId"    # I
    .param p5, "finishActivity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/android/camera/FatalErrorHandler$Reason;->mDialogMsgId:I

    .line 68
    iput p4, p0, Lcom/android/camera/FatalErrorHandler$Reason;->mFeedbackMsgId:I

    .line 69
    iput-boolean p5, p0, Lcom/android/camera/FatalErrorHandler$Reason;->mFinishActivity:Z

    .line 70
    return-void
.end method

.method public static fromCamera2CameraDeviceStateCallbackError(I)Lcom/android/camera/FatalErrorHandler$Reason;
    .locals 1
    .param p0, "error"    # I

    .prologue
    .line 108
    .line 115
    sget-object v0, Lcom/android/camera/FatalErrorHandler$Reason;->CANNOT_CONNECT_TO_CAMERA:Lcom/android/camera/FatalErrorHandler$Reason;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/FatalErrorHandler$Reason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/android/camera/FatalErrorHandler$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FatalErrorHandler$Reason;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/FatalErrorHandler$Reason;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/camera/FatalErrorHandler$Reason;->$VALUES:[Lcom/android/camera/FatalErrorHandler$Reason;

    invoke-virtual {v0}, [Lcom/android/camera/FatalErrorHandler$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/FatalErrorHandler$Reason;

    return-object v0
.end method


# virtual methods
.method public doesFinishActivity()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/camera/FatalErrorHandler$Reason;->mFinishActivity:Z

    return v0
.end method

.method public getDialogMsgId()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/android/camera/FatalErrorHandler$Reason;->mDialogMsgId:I

    return v0
.end method

.method public getFeedbackMsgId()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/camera/FatalErrorHandler$Reason;->mFeedbackMsgId:I

    return v0
.end method
