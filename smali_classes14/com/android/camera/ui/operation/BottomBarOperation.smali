.class public Lcom/android/camera/ui/operation/BottomBarOperation;
.super Landroid/widget/FrameLayout;
.source "BottomBarOperation.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;
    }
.end annotation


# static fields
.field protected static final MODE_CANCEL:I = 0x3

.field protected static final MODE_CAPTURE:I = 0x0

.field protected static final MODE_INTENT:I = 0x1

.field protected static final MODE_INTENT_REVIEW:I = 0x2

.field protected static final MODE_RECORD:I = 0x4

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field protected mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

.field private mMode:I

.field public mModeSwitchListener:Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BottomBarOperation"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/operation/BottomBarOperation;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/operation/BottomBarOperation;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    .line 56
    return-void
.end method


# virtual methods
.method public addVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;

    .prologue
    .line 237
    return-void
.end method

.method public animateToFullSize(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 226
    return-void
.end method

.method public animateToPanoStop(IZ)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 221
    return-void
.end method

.method public animateToVideoStop(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 217
    return-void
.end method

.method public buildModeList(Ljava/util/List;ZIZ)V
    .locals 0
    .param p2, "isSecureCamera"    # Z
    .param p3, "current"    # I
    .param p4, "isCaptureIntent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;ZIZ)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "modeIndexList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    return-void
.end method

.method public disableSwitchMode()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public enableSwitchMode()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public hideVideoSnapShotButton()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public isInIntentReview()Z
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/android/camera/ui/operation/BottomBarOperation;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInRecord()Z
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/android/camera/ui/operation/BottomBarOperation;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutterButtonAnimating()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public isShutterButtonEnabled()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public isShutterButtonPressed()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public isSwitchButtonEnabled()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public isTouchShutterButton(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public onModeSelected(I)V
    .locals 0
    .param p1, "modeIndex"    # I

    .prologue
    .line 254
    return-void
.end method

.method public onSwipeDetected(I)V
    .locals 0
    .param p1, "swipeState"    # I

    .prologue
    .line 253
    return-void
.end method

.method public removeVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;

    .prologue
    .line 239
    return-void
.end method

.method public requireBlockTouch(Z)V
    .locals 0
    .param p1, "block"    # Z

    .prologue
    .line 248
    return-void
.end method

.method public resetVideoBtnSrc(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 228
    return-void
.end method

.method public setBackgroundAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 150
    return-void
.end method

.method public setBottomBarUISpec(Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;)V
    .locals 0
    .param p1, "bottomBarSpec"    # Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    .prologue
    .line 252
    return-void
.end method

.method public setCaptureLayoutHelper(Lcom/android/camera/CaptureLayoutHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/camera/CaptureLayoutHelper;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/camera/ui/operation/BottomBarOperation;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    .line 118
    return-void
.end method

.method public setColorsForModeIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 148
    return-void
.end method

.method public setDisableAllUserInteractions(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    .line 129
    return-void
.end method

.method public setFakeShutterButtonEnabled()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public setFakeSwitchButtonEnabled()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public setModeSwitchListener(Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/camera/ui/operation/BottomBarOperation;->mModeSwitchListener:Lcom/android/camera/ui/operation/BottomBarOperation$CameraModeSwitchListener;

    .line 257
    return-void
.end method

.method public setModeTextVisible(I)V
    .locals 0
    .param p1, "visible"    # I

    .prologue
    .line 137
    return-void
.end method

.method public setOperationVisible(I)V
    .locals 0
    .param p1, "visible"    # I

    .prologue
    .line 230
    return-void
.end method

.method public setOperationVisible(III)V
    .locals 0
    .param p1, "thumbVisible"    # I
    .param p2, "switchVisible"    # I
    .param p3, "modeVisible"    # I

    .prologue
    .line 232
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 235
    return-void
.end method

.method public setShutterButtonEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 158
    return-void
.end method

.method public setShutterButtonEnabledImmediately(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 164
    return-void
.end method

.method public setShutterButtonIcon(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 212
    return-void
.end method

.method public setShutterButtonImportantToA11y(Z)V
    .locals 0
    .param p1, "important"    # Z

    .prologue
    .line 175
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 131
    return-void
.end method

.method public setSwitchButtonEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 194
    return-void
.end method

.method public setSwitchButtonVisible(I)V
    .locals 0
    .param p1, "visible"    # I

    .prologue
    .line 202
    return-void
.end method

.method public setVideoShutterButtonEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 245
    return-void
.end method

.method public showVideoSnapShotButton()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public startVideoBtnWithAnim(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 219
    return-void
.end method

.method public switchModeDone()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public transitionToCancel()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/operation/BottomBarOperation;->mMode:I

    .line 76
    return-void
.end method

.method public transitionToCapture()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/operation/BottomBarOperation;->mMode:I

    .line 64
    return-void
.end method

.method public transitionToHide()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/operation/BottomBarOperation;->mMode:I

    .line 84
    return-void
.end method

.method public transitionToIntentCaptureLayout()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/operation/BottomBarOperation;->mMode:I

    .line 92
    return-void
.end method

.method public transitionToIntentReviewLayout()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/operation/BottomBarOperation;->mMode:I

    .line 100
    return-void
.end method

.method public transitionToRecord()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/ui/operation/BottomBarOperation;->mMode:I

    .line 68
    return-void
.end method
