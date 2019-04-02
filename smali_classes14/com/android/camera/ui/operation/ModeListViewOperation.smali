.class public Lcom/android/camera/ui/operation/ModeListViewOperation;
.super Landroid/widget/FrameLayout;
.source "ModeListViewOperation.java"

# interfaces
.implements Lcom/android/camera/ui/operation/ModeSelectorItemOperation$VisibleWidthChangedListener;
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/operation/ModeListViewOperation$TimeBasedPosition;,
        Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListVisibilityChangedListener;,
        Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;,
        Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;,
        Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListState;,
        Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field public mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

.field private mContext:Landroid/content/Context;

.field public final mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

.field public mModeListOpenListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;

.field public mModeSwitchListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;

.field public mScreenShotProvider:Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;

.field public mVisibilityChangedListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListVisibilityChangedListener;

.field protected onceUseSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ModeListViewOperation"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/operation/ModeListViewOperation;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 314
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;-><init>(Lcom/android/camera/ui/operation/ModeListViewOperation;)V

    iput-object v0, p0, Lcom/android/camera/ui/operation/ModeListViewOperation;->mCurrentStateManager:Lcom/android/camera/ui/operation/ModeListViewOperation$CurrentStateManager;

    .line 40
    iput-object v1, p0, Lcom/android/camera/ui/operation/ModeListViewOperation;->mScreenShotProvider:Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;

    .line 42
    iput-object v1, p0, Lcom/android/camera/ui/operation/ModeListViewOperation;->mModeSwitchListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;

    .line 43
    iput-object v1, p0, Lcom/android/camera/ui/operation/ModeListViewOperation;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/operation/ModeListViewOperation;->onceUseSelected:Z

    .line 315
    iput-object p1, p0, Lcom/android/camera/ui/operation/ModeListViewOperation;->mContext:Landroid/content/Context;

    .line 316
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/operation/ModeListViewOperation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/operation/ModeListViewOperation;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/ui/operation/ModeListViewOperation;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 0

    .prologue
    .line 402
    return-void
.end method

.method public hideAnimated()V
    .locals 0

    .prologue
    .line 407
    return-void
.end method

.method public init(Ljava/util/List;Z)V
    .locals 0
    .param p2, "isSecureCamera"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, "modeIndexList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    return-void
.end method

.method public isUserOnceSelected()Z
    .locals 1

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/android/camera/ui/operation/ModeListViewOperation;->onceUseSelected:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 362
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 363
    return-void
.end method

.method public onMenuPressed()Z
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 373
    return-void
.end method

.method public onVisibleWidthChanged(I)V
    .locals 0
    .param p1, "visibleWidth"    # I

    .prologue
    .line 414
    return-void
.end method

.method public setCameraModuleScreenShotProvider(Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/camera/ui/operation/ModeListViewOperation;->mScreenShotProvider:Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;

    .line 332
    return-void
.end method

.method public setCaptureLayoutHelper(Lcom/android/camera/CaptureLayoutHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/camera/CaptureLayoutHelper;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/camera/ui/operation/ModeListViewOperation;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    .line 370
    return-void
.end method

.method public setModeListOpenListener(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/camera/ui/operation/ModeListViewOperation;->mModeListOpenListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListOpenListener;

    .line 350
    return-void
.end method

.method public setModeSwitchListener(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/camera/ui/operation/ModeListViewOperation;->mModeSwitchListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeSwitchListener;

    .line 341
    return-void
.end method

.method protected setOnceSelected()V
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/operation/ModeListViewOperation;->onceUseSelected:Z

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 49
    return-void
.end method

.method public setShouldShowSettingsCling(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 382
    return-void
.end method

.method public setVisibilityChangedListener(Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListVisibilityChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListVisibilityChangedListener;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/camera/ui/operation/ModeListViewOperation;->mVisibilityChangedListener:Lcom/android/camera/ui/operation/ModeListViewOperation$ModeListVisibilityChangedListener;

    .line 358
    return-void
.end method

.method public showModeSwitcherHint()V
    .locals 0

    .prologue
    .line 397
    return-void
.end method

.method public showSettingsClingIfEnabled(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 389
    return-void
.end method

.method public startModeSelectionAnimation()V
    .locals 0

    .prologue
    .line 429
    return-void
.end method
