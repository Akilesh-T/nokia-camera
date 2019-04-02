.class public Lcom/android/camera/ManualProModeUI;
.super Lcom/android/camera/ManualAbstractUI;
.source "ManualProModeUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ManualProModeUI$ZoomChangeListener;
    }
.end annotation


# static fields
.field private static final HIDE_TEXT_TIMEOUT:J = 0x7d0L

.field private static final MSG_HIDE_TEXT_HINT:I = 0x0

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final UNSET:F = 0.0f

.field private static final ZOOM_MINIMUM_WAIT_MILLIS:J = 0x21L


# instance fields
.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private mAspectRatio:F

.field private final mController:Lcom/android/camera/ManualController;

.field private final mCountdownView:Lcom/android/camera/ui/CountDownView;

.field private mDelayZoomCallUntilMillis:J

.field private mDisableColor:I

.field private mETItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mEVItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation
.end field

.field private final mFaceView:Lcom/android/camera/ui/FaceView;

.field private final mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private mHandler:Landroid/os/Handler;

.field private mISOItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEditableMode:Z

.field private mMFItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mManualAwbCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

.field private mManualAwbIcon:Landroid/widget/ImageView;

.field private mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

.field private mManualAwbTv:Landroid/widget/TextView;

.field mManualClickHandler:Landroid/view/View$OnClickListener;

.field private mManualEnabled:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/camera/ui/ProModeSeekBar;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mManualEtCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

.field private mManualEtIcon:Landroid/widget/ImageView;

.field private mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

.field private mManualEtTv:Landroid/widget/TextView;

.field private mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

.field private mManualEvIcon:Landroid/widget/ImageView;

.field private mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

.field private mManualEvTv:Landroid/widget/TextView;

.field private mManualIsoCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

.field private mManualIsoIcon:Landroid/widget/ImageView;

.field private mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

.field private mManualIsoTv:Landroid/widget/TextView;

.field private mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

.field private mManualMfIcon:Landroid/widget/ImageView;

.field private mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

.field private mManualMfTv:Landroid/widget/TextView;

.field private mManualModeControlBar:Landroid/widget/FrameLayout;

.field private mManualProHint:Landroid/widget/TextView;

.field private mManualProHintRotateLayout:Lcom/android/camera/ui/RotateLayout;

.field private mManualProModeFrame:Landroid/widget/FrameLayout;

.field private mManualProModeRootView:Landroid/widget/FrameLayout;

.field private mManualProModeRotateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/RotateLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mManualProModeSeekBarList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/ProModeSeekBar;",
            ">;"
        }
    .end annotation
.end field

.field private mManualWTCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

.field private mManualWTIcon:Landroid/widget/ImageView;

.field private mManualWTSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

.field private mManualWTTv:Landroid/widget/TextView;

.field private mManualZoomCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

.field private mManualZoomIcon:Landroid/widget/ImageView;

.field private mManualZoomSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

.field private mManualZoomTv:Landroid/widget/TextView;

.field private final mModuleRoot:Landroid/view/View;

.field private mOrientation:I

.field private final mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mPreviewHeight:I

.field private final mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private mPreviewWidth:I

.field private mProClipPaddingSize:I

.field private final mRootView:Landroid/view/View;

.field private mWBItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mWTItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomMax:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ManualUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ManualProModeUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/ManualController;Landroid/view/View;ZI)V
    .locals 5
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "controller"    # Lcom/android/camera/ManualController;
    .param p3, "parent"    # Landroid/view/View;
    .param p4, "isEditableMode"    # Z
    .param p5, "orientation"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 262
    invoke-direct {p0}, Lcom/android/camera/ManualAbstractUI;-><init>()V

    .line 62
    iput v2, p0, Lcom/android/camera/ManualProModeUI;->mPreviewWidth:I

    .line 63
    iput v2, p0, Lcom/android/camera/ManualProModeUI;->mPreviewHeight:I

    .line 64
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ManualProModeUI;->mAspectRatio:F

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualEnabled:Ljava/util/HashMap;

    .line 71
    iput-boolean v2, p0, Lcom/android/camera/ManualProModeUI;->mIsEditableMode:Z

    .line 132
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/ManualProModeUI;->mDelayZoomCallUntilMillis:J

    .line 140
    new-instance v1, Lcom/android/camera/ManualProModeUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualProModeUI$1;-><init>(Lcom/android/camera/ManualProModeUI;)V

    iput-object v1, p0, Lcom/android/camera/ManualProModeUI;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 151
    new-instance v1, Lcom/android/camera/ManualProModeUI$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualProModeUI$2;-><init>(Lcom/android/camera/ManualProModeUI;)V

    iput-object v1, p0, Lcom/android/camera/ManualProModeUI;->mHandler:Landroid/os/Handler;

    .line 533
    new-instance v1, Lcom/android/camera/ManualProModeUI$4;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualProModeUI$4;-><init>(Lcom/android/camera/ManualProModeUI;)V

    iput-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    .line 263
    iput-object p1, p0, Lcom/android/camera/ManualProModeUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 264
    iput-object p2, p0, Lcom/android/camera/ManualProModeUI;->mController:Lcom/android/camera/ManualController;

    .line 265
    iput-object p3, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    .line 267
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 268
    .local v0, "moduleRoot":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040055

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 269
    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mModuleRoot:Landroid/view/View;

    .line 270
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v1, p0, Lcom/android/camera/ManualProModeUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 271
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v1, p0, Lcom/android/camera/ManualProModeUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 272
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/CountDownView;

    iput-object v1, p0, Lcom/android/camera/ManualProModeUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    .line 274
    invoke-static {}, Lcom/android/camera/debug/DebugPropertyHelper;->showCaptureDebugUI()Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FaceView;

    iput-object v1, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 280
    iput-boolean p4, p0, Lcom/android/camera/ManualProModeUI;->mIsEditableMode:Z

    .line 281
    const v1, 0x7f0e0062

    invoke-virtual {p1, v1}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ManualProModeUI;->mDisableColor:I

    .line 282
    iput p5, p0, Lcom/android/camera/ManualProModeUI;->mOrientation:I

    .line 283
    invoke-direct {p0}, Lcom/android/camera/ManualProModeUI;->initManualModeLayout()V

    .line 284
    invoke-virtual {p0, p5, v4}, Lcom/android/camera/ManualProModeUI;->setOrientation(IZ)V

    .line 285
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/ManualController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mController:Lcom/android/camera/ManualController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ManualProModeUI;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualProHint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/ui/ProModeSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ManualProModeUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/ui/ProModeSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualWTSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/ManualProModeUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualWTIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/ui/ProModeSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/ManualProModeUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEtIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/ui/ProModeSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/ManualProModeUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualIsoIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/ui/ProModeSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualZoomSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/ManualProModeUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualZoomIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/ManualProModeUI;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/android/camera/ManualProModeUI;->mDelayZoomCallUntilMillis:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/android/camera/ManualProModeUI;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;
    .param p1, "x1"    # J

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/android/camera/ManualProModeUI;->mDelayZoomCallUntilMillis:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/camera/ManualProModeUI;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeSeekBarList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/ManualProModeUI;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEnabled:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ManualProModeUI;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ManualProModeUI;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/camera/ManualProModeUI;->showHintText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/ui/ProModeSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/ManualProModeUI;Lcom/android/camera/ui/ProModeSeekBar;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;
    .param p1, "x1"    # Lcom/android/camera/ui/ProModeSeekBar;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ManualProModeUI;->expandOrFoldOption(Lcom/android/camera/ui/ProModeSeekBar;ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/ManualProModeUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEvIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/ui/ProModeSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/ManualProModeUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualMfIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method private addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V
    .locals 3
    .param p1, "layout"    # Lcom/android/camera/ui/RotateLayout;

    .prologue
    const/4 v2, 0x1

    .line 480
    iget v0, p0, Lcom/android/camera/ManualProModeUI;->mOrientation:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    .line 481
    const/16 v0, 0x10e

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 487
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeRotateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    return-void

    .line 482
    :cond_0
    iget v0, p0, Lcom/android/camera/ManualProModeUI;->mOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    .line 483
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_0

    .line 485
    :cond_1
    iget v0, p0, Lcom/android/camera/ManualProModeUI;->mOrientation:I

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_0
.end method

.method private animateProModeLayout()V
    .locals 4

    .prologue
    .line 465
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeSeekBarList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 466
    iget-object v3, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeSeekBarList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ProModeSeekBar;

    .line 467
    .local v2, "seekBar":Lcom/android/camera/ui/ProModeSeekBar;
    if-nez v2, :cond_1

    .line 465
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ManualProModeUI;->mManualEnabled:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 470
    .local v0, "enabled":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 473
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    .line 474
    invoke-virtual {v2}, Lcom/android/camera/ui/ProModeSeekBar;->setAnimateVisible()V

    goto :goto_1

    .line 476
    .end local v0    # "enabled":Ljava/lang/Boolean;
    .end local v2    # "seekBar":Lcom/android/camera/ui/ProModeSeekBar;
    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/camera/ManualProModeUI;->setCameraControlBarOption(Z)V

    .line 477
    return-void
.end method

.method private clearIconBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 455
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEvIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEvIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualMfIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualMfIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualWTIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualWTIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 459
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEtIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEtIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 460
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualIsoIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualIsoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 461
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualZoomIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualZoomIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 462
    :cond_6
    return-void
.end method

.method private expandOrFoldOption(Lcom/android/camera/ui/ProModeSeekBar;ZZ)V
    .locals 2
    .param p1, "seekBar"    # Lcom/android/camera/ui/ProModeSeekBar;
    .param p2, "forceFold"    # Z
    .param p3, "animated"    # Z

    .prologue
    .line 491
    invoke-virtual {p1}, Lcom/android/camera/ui/ProModeSeekBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const/16 v0, 0x8

    .line 492
    .local v0, "visible":I
    :goto_0
    if-eqz p2, :cond_0

    const/16 v0, 0x8

    .line 493
    :cond_0
    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    .line 494
    invoke-virtual {p1}, Lcom/android/camera/ui/ProModeSeekBar;->setAnimateVisible()V

    .line 498
    :goto_1
    if-nez v0, :cond_1

    .line 499
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/ManualProModeUI;->setCameraControlBarOption(Z)V

    .line 501
    :cond_1
    return-void

    .line 491
    .end local v0    # "visible":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 496
    .restart local v0    # "visible":I
    :cond_3
    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    goto :goto_1
.end method

.method private hideHintText()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualProHint:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualProHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private inflateMenuModeOptions(Ljava/util/ArrayList;Lcom/android/camera/ui/ProModeSeekBar;Lcom/android/camera/ui/RotateLayout;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p2, "seekBar"    # Lcom/android/camera/ui/ProModeSeekBar;
    .param p3, "iconLayout"    # Lcom/android/camera/ui/RotateLayout;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "currentValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;",
            "Lcom/android/camera/ui/ProModeSeekBar;",
            "Lcom/android/camera/ui/RotateLayout;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 876
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 877
    const-string v1, "pref_camera_zoom_key"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pref_camera_manual_focus_mode"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "pref_camera_zoom_key"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p2, p1, p5, v1, v4}, Lcom/android/camera/ui/ProModeSeekBar;->setMax(Ljava/util/ArrayList;Ljava/lang/String;ZZ)V

    .line 878
    new-instance v1, Lcom/android/camera/ManualProModeUI$5;

    invoke-direct {v1, p0, p4, p1}, Lcom/android/camera/ManualProModeUI$5;-><init>(Lcom/android/camera/ManualProModeUI;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setListener(Lcom/android/camera/ui/ProModeSeekBar$OnProModeChangedListener;)V

    .line 908
    invoke-virtual {p2, v3}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    .line 909
    invoke-virtual {p2}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 910
    invoke-virtual {p3, v3}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 911
    invoke-virtual {p3}, Lcom/android/camera/ui/RotateLayout;->requestLayout()V

    .line 912
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualEnabled:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    const/4 v0, 0x1

    .line 922
    .local v0, "isSuccess":Z
    :goto_1
    return v0

    .end local v0    # "isSuccess":Z
    :cond_0
    move v1, v3

    .line 877
    goto :goto_0

    .line 915
    :cond_1
    invoke-virtual {p2, v4}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    .line 916
    invoke-virtual {p2}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 917
    invoke-virtual {p3, v4}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 918
    invoke-virtual {p3}, Lcom/android/camera/ui/RotateLayout;->requestLayout()V

    .line 919
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualEnabled:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    const/4 v0, 0x0

    .restart local v0    # "isSuccess":Z
    goto :goto_1
.end method

.method private initManualModeAwbLayout()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbIcon:Landroid/widget/ImageView;

    .line 400
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbTv:Landroid/widget/TextView;

    .line 401
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    .line 402
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/ManualProModeUI;->addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 404
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ProModeSeekBar;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    .line 405
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget v1, p0, Lcom/android/camera/ManualProModeUI;->mProClipPaddingSize:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setClipPaddingSize(I)V

    .line 406
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeSeekBarList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    return-void
.end method

.method private initManualModeAwbOptions(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 7
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    const/16 v1, 0x8

    .line 733
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 734
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedWhiteBalance()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedWhiteBalance()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 736
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateLayout;->requestLayout()V

    .line 737
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 739
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEnabled:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    :cond_1
    :goto_0
    return-void

    .line 743
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mController:Lcom/android/camera/ManualController;

    const-string v1, "pref_camera_whitebalance_mode_key"

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->getManualItemListByKey(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mWBItemLists:Ljava/util/ArrayList;

    .line 744
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mController:Lcom/android/camera/ManualController;

    const-string v1, "pref_camera_whitebalance_mode_key"

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->getCurrentManualValueItemByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 745
    .local v5, "currentValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mWBItemLists:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget-object v3, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    const-string v4, "pref_camera_whitebalance_mode_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ManualProModeUI;->inflateMenuModeOptions(Ljava/util/ArrayList;Lcom/android/camera/ui/ProModeSeekBar;Lcom/android/camera/ui/RotateLayout;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 747
    .local v6, "success":Z
    if-eqz v6, :cond_1

    const-string v0, "pref_camera_whitebalance_mode_key"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/ManualProModeUI;->updateManualContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initManualModeEtLayout()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEtIcon:Landroid/widget/ImageView;

    .line 367
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0173

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEtTv:Landroid/widget/TextView;

    .line 368
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEtCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    .line 369
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEtCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEtCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/ManualProModeUI;->addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 371
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ProModeSeekBar;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    .line 372
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget v1, p0, Lcom/android/camera/ManualProModeUI;->mProClipPaddingSize:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setClipPaddingSize(I)V

    .line 373
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeSeekBarList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    return-void
.end method

.method private initManualModeEtOptions()V
    .locals 7

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mController:Lcom/android/camera/ManualController;

    const-string v1, "pref_camera_manual_exposure_time_key"

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->getManualItemListByKey(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mETItemLists:Ljava/util/ArrayList;

    .line 699
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mController:Lcom/android/camera/ManualController;

    const-string v1, "pref_camera_manual_exposure_time_key"

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->getCurrentManualValueItemByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 700
    .local v5, "currentValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mETItemLists:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/ManualProModeUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget-object v3, p0, Lcom/android/camera/ManualProModeUI;->mManualEtCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    const-string v4, "pref_camera_manual_exposure_time_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ManualProModeUI;->inflateMenuModeOptions(Ljava/util/ArrayList;Lcom/android/camera/ui/ProModeSeekBar;Lcom/android/camera/ui/RotateLayout;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 702
    .local v6, "success":Z
    if-eqz v6, :cond_0

    const-string v0, "pref_camera_manual_exposure_time_key"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/ManualProModeUI;->updateManualContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :cond_0
    return-void
.end method

.method private initManualModeEvLayout()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEvIcon:Landroid/widget/ImageView;

    .line 356
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEvTv:Landroid/widget/TextView;

    .line 357
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    .line 358
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/ManualProModeUI;->addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 360
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ProModeSeekBar;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    .line 361
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget v1, p0, Lcom/android/camera/ManualProModeUI;->mProClipPaddingSize:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setClipPaddingSize(I)V

    .line 362
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeSeekBarList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    return-void
.end method

.method private initManualModeEvOptions(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 9
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 670
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 672
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateLayout;->requestLayout()V

    .line 673
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 675
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEnabled:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    :cond_1
    :goto_0
    return-void

    .line 679
    :cond_2
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v6

    .line 680
    .local v6, "max":I
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v7

    .line 681
    .local v7, "min":I
    if-nez v6, :cond_3

    if-nez v7, :cond_3

    .line 682
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateLayout;->requestLayout()V

    .line 684
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 686
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEnabled:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 690
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mController:Lcom/android/camera/ManualController;

    const-string v1, "pref_camera_manual_exposure_key"

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->getManualItemListByKey(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mEVItemLists:Ljava/util/ArrayList;

    .line 691
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mController:Lcom/android/camera/ManualController;

    const-string v1, "pref_camera_manual_exposure_key"

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->getCurrentManualValueItemByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 692
    .local v5, "currentValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mEVItemLists:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/ManualProModeUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget-object v3, p0, Lcom/android/camera/ManualProModeUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    const-string v4, "pref_camera_manual_exposure_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ManualProModeUI;->inflateMenuModeOptions(Ljava/util/ArrayList;Lcom/android/camera/ui/ProModeSeekBar;Lcom/android/camera/ui/RotateLayout;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 694
    .local v8, "success":Z
    if-eqz v8, :cond_1

    const-string v0, "pref_camera_manual_exposure_key"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/ManualProModeUI;->updateManualContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initManualModeFocusLayout()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualMfIcon:Landroid/widget/ImageView;

    .line 389
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualMfTv:Landroid/widget/TextView;

    .line 390
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    .line 391
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/ManualProModeUI;->addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 393
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ProModeSeekBar;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    .line 394
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget v1, p0, Lcom/android/camera/ManualProModeUI;->mProClipPaddingSize:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setClipPaddingSize(I)V

    .line 395
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeSeekBarList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    return-void
.end method

.method private initManualModeFocusOptions(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 7
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    const/16 v2, 0x8

    .line 714
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_MANUAL_FOCUS_MODE:Ljava/lang/String;

    sget-object v1, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_MANUAL_FOCUS_MODE:Ljava/lang/String;

    .line 716
    invoke-static {v1}, Lcom/android/camera/util/ProductConfigUtil;->getConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->MANUAL_FOCUS:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 717
    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateLayout;->requestLayout()V

    .line 720
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/ProModeSeekBar;->setVisibility(I)V

    .line 721
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 722
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEnabled:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    :cond_1
    :goto_0
    return-void

    .line 725
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/camera/ManualDataUtil;->getFocusModes(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraCapabilities;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mMFItemLists:Ljava/util/ArrayList;

    .line 726
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mController:Lcom/android/camera/ManualController;

    const-string v1, "pref_camera_manual_focus_mode"

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->getCurrentManualValueItemByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 727
    .local v5, "currentValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mMFItemLists:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/ManualProModeUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget-object v3, p0, Lcom/android/camera/ManualProModeUI;->mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    const-string v4, "pref_camera_manual_focus_mode"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ManualProModeUI;->inflateMenuModeOptions(Ljava/util/ArrayList;Lcom/android/camera/ui/ProModeSeekBar;Lcom/android/camera/ui/RotateLayout;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 729
    .local v6, "success":Z
    if-eqz v6, :cond_1

    const-string v0, "pref_camera_manual_focus_mode"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/ManualProModeUI;->updateManualContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initManualModeIsoLayout()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualIsoIcon:Landroid/widget/ImageView;

    .line 378
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualIsoTv:Landroid/widget/TextView;

    .line 379
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualIsoCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    .line 380
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualIsoCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualIsoCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/ManualProModeUI;->addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 382
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ProModeSeekBar;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    .line 383
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget v1, p0, Lcom/android/camera/ManualProModeUI;->mProClipPaddingSize:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setClipPaddingSize(I)V

    .line 384
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeSeekBarList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    return-void
.end method

.method private initManualModeIsoOptions()V
    .locals 7

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mController:Lcom/android/camera/ManualController;

    const-string v1, "pref_camera_manual_exposure_iso"

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->getManualItemListByKey(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mISOItemLists:Ljava/util/ArrayList;

    .line 707
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mController:Lcom/android/camera/ManualController;

    const-string v1, "pref_camera_manual_exposure_iso"

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->getCurrentManualValueItemByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 708
    .local v5, "currentValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mISOItemLists:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/ManualProModeUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget-object v3, p0, Lcom/android/camera/ManualProModeUI;->mManualIsoCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    const-string v4, "pref_camera_manual_exposure_iso"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ManualProModeUI;->inflateMenuModeOptions(Ljava/util/ArrayList;Lcom/android/camera/ui/ProModeSeekBar;Lcom/android/camera/ui/RotateLayout;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 710
    .local v6, "success":Z
    if-eqz v6, :cond_0

    const-string v0, "pref_camera_manual_exposure_iso"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/ManualProModeUI;->updateManualContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    :cond_0
    return-void
.end method

.method private initManualModeLayout()V
    .locals 10

    .prologue
    .line 295
    iget-object v5, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v6, 0x7f0f017f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeRootView:Landroid/widget/FrameLayout;

    .line 296
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeRotateList:Ljava/util/List;

    .line 297
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeSeekBarList:Ljava/util/List;

    .line 298
    iget-object v5, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v6, 0x7f0f0167

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/android/camera/ManualProModeUI;->mManualModeControlBar:Landroid/widget/FrameLayout;

    .line 299
    iget-object v5, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v6, 0x7f0f0180

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeFrame:Landroid/widget/FrameLayout;

    .line 300
    iget-object v5, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v6, 0x7f0f017e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/camera/ManualProModeUI;->mManualProHint:Landroid/widget/TextView;

    .line 301
    iget-object v5, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v6, 0x7f0f017d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/RotateLayout;

    iput-object v5, p0, Lcom/android/camera/ManualProModeUI;->mManualProHintRotateLayout:Lcom/android/camera/ui/RotateLayout;

    .line 302
    iget-object v5, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeRotateList:Ljava/util/List;

    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualProHintRotateLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget v5, p0, Lcom/android/camera/ManualProModeUI;->mOrientation:I

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/android/camera/ManualProModeUI;->mOrientation:I

    const/16 v6, 0xb4

    if-ne v5, v6, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 305
    .local v1, "isIncludeWidth":Z
    :goto_0
    iget-object v5, p0, Lcom/android/camera/ManualProModeUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/camera/app/CameraAppUI;->getCenterOfShutterButton(Z)Landroid/graphics/Point;

    move-result-object v4

    .line 306
    .local v4, "point":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 307
    .local v3, "observer":Landroid/view/ViewTreeObserver;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 308
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/android/camera/ManualProModeUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 309
    new-instance v5, Lcom/android/camera/ManualProModeUI$3;

    invoke-direct {v5, p0, v3}, Lcom/android/camera/ManualProModeUI$3;-><init>(Lcom/android/camera/ManualProModeUI;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v3, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 318
    iget-object v5, p0, Lcom/android/camera/ManualProModeUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/app/CameraAppUI;->getBottomBarHeightByDUT()I

    move-result v0

    .line 319
    .local v0, "bottomBarHeight":I
    iget-object v5, p0, Lcom/android/camera/ManualProModeUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/util/ProductModelUtil;->isLargeScreen(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/ManualProModeUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v5}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v5

    int-to-double v6, v5

    const-wide v8, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v6, v8

    double-to-int v5, v6

    sub-int v5, v0, v5

    .line 320
    :goto_1
    iput v5, p0, Lcom/android/camera/ManualProModeUI;->mProClipPaddingSize:I

    .line 325
    invoke-direct {p0}, Lcom/android/camera/ManualProModeUI;->initManualModeEvLayout()V

    .line 326
    invoke-direct {p0}, Lcom/android/camera/ManualProModeUI;->initManualModeEtLayout()V

    .line 327
    invoke-direct {p0}, Lcom/android/camera/ManualProModeUI;->initManualModeIsoLayout()V

    .line 328
    invoke-direct {p0}, Lcom/android/camera/ManualProModeUI;->initManualModeFocusLayout()V

    .line 329
    invoke-direct {p0}, Lcom/android/camera/ManualProModeUI;->initManualModeAwbLayout()V

    .line 330
    return-void

    .line 304
    .end local v0    # "bottomBarHeight":I
    .end local v1    # "isIncludeWidth":Z
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "observer":Landroid/view/ViewTreeObserver;
    .end local v4    # "point":Landroid/graphics/Point;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 319
    .restart local v0    # "bottomBarHeight":I
    .restart local v1    # "isIncludeWidth":Z
    .restart local v2    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v3    # "observer":Landroid/view/ViewTreeObserver;
    .restart local v4    # "point":Landroid/graphics/Point;
    :cond_2
    iget-object v5, p0, Lcom/android/camera/ManualProModeUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 320
    invoke-static {v5}, Lcom/android/camera/util/SystemUIUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v5

    sub-int v5, v0, v5

    goto :goto_1
.end method

.method private initManualModeWTLayout()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0178

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualWTIcon:Landroid/widget/ImageView;

    .line 345
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0179

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualWTTv:Landroid/widget/TextView;

    .line 346
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0177

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualWTCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    .line 347
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualWTCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualWTCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/ManualProModeUI;->addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 349
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0182

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ProModeSeekBar;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualWTSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    .line 350
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualWTSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget v1, p0, Lcom/android/camera/ManualProModeUI;->mProClipPaddingSize:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setClipPaddingSize(I)V

    .line 351
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeSeekBarList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualWTSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method private initManualModeWTOptions()V
    .locals 7

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mController:Lcom/android/camera/ManualController;

    const-string v1, "pref_camera_wide_tele_key"

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->getManualItemListByKey(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mWTItemLists:Ljava/util/ArrayList;

    .line 663
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mController:Lcom/android/camera/ManualController;

    const-string v1, "pref_camera_wide_tele_key"

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->getCurrentManualValueItemByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 664
    .local v5, "currentValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mWTItemLists:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/ManualProModeUI;->mManualWTSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget-object v3, p0, Lcom/android/camera/ManualProModeUI;->mManualWTCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    const-string v4, "pref_camera_wide_tele_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ManualProModeUI;->inflateMenuModeOptions(Ljava/util/ArrayList;Lcom/android/camera/ui/ProModeSeekBar;Lcom/android/camera/ui/RotateLayout;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 666
    .local v6, "success":Z
    if-eqz v6, :cond_0

    const-string v0, "pref_camera_wide_tele_key"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/ManualProModeUI;->updateManualContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :cond_0
    return-void
.end method

.method private initManualModeZoomLayout()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f017b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualZoomIcon:Landroid/widget/ImageView;

    .line 334
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f017c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualZoomTv:Landroid/widget/TextView;

    .line 335
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f017a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualZoomCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    .line 336
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualZoomCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualZoomCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/ManualProModeUI;->addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 338
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0181

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ProModeSeekBar;

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualZoomSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    .line 339
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualZoomSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget v1, p0, Lcom/android/camera/ManualProModeUI;->mProClipPaddingSize:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ProModeSeekBar;->setClipPaddingSize(I)V

    .line 340
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeSeekBarList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualZoomSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    return-void
.end method

.method private initManualModeZoomOptions(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 7
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mController:Lcom/android/camera/ManualController;

    const-string v1, "pref_camera_zoom_key"

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->getManualItemListByKey(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualProModeUI;->mZoomItemLists:Ljava/util/ArrayList;

    .line 753
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mController:Lcom/android/camera/ManualController;

    const-string v1, "pref_camera_zoom_key"

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->getCurrentManualValueItemByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 754
    .local v5, "currentValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mZoomItemLists:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/ManualProModeUI;->mManualZoomSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    iget-object v3, p0, Lcom/android/camera/ManualProModeUI;->mManualZoomCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    const-string v4, "pref_camera_zoom_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ManualProModeUI;->inflateMenuModeOptions(Ljava/util/ArrayList;Lcom/android/camera/ui/ProModeSeekBar;Lcom/android/camera/ui/RotateLayout;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 756
    .local v6, "success":Z
    if-eqz v6, :cond_0

    const-string v0, "pref_camera_zoom_key"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/ManualProModeUI;->updateManualContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :cond_0
    return-void
.end method

.method private initProModeLayout(Z)V
    .locals 11
    .param p1, "isChanged"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 410
    iget-object v7, p0, Lcom/android/camera/ManualProModeUI;->mManualModeControlBar:Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    .line 411
    iget-object v10, p0, Lcom/android/camera/ManualProModeUI;->mManualModeControlBar:Landroid/widget/FrameLayout;

    iget-boolean v7, p0, Lcom/android/camera/ManualProModeUI;->mIsEditableMode:Z

    if-eqz v7, :cond_2

    const/16 v7, 0x8

    :goto_0
    invoke-virtual {v10, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 412
    :cond_0
    iget-boolean v7, p0, Lcom/android/camera/ManualProModeUI;->mIsEditableMode:Z

    invoke-direct {p0, v7}, Lcom/android/camera/ManualProModeUI;->setCameraControlBarOption(Z)V

    .line 413
    invoke-direct {p0}, Lcom/android/camera/ManualProModeUI;->clearIconBackground()V

    .line 414
    const/4 v3, 0x0

    .line 415
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeSeekBarList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_8

    .line 416
    iget-object v7, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeSeekBarList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/ProModeSeekBar;

    .line 417
    .local v6, "seekBar":Lcom/android/camera/ui/ProModeSeekBar;
    if-nez v6, :cond_3

    .line 415
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v6    # "seekBar":Lcom/android/camera/ui/ProModeSeekBar;
    :cond_2
    move v7, v8

    .line 411
    goto :goto_0

    .line 419
    .restart local v2    # "i":I
    .restart local v3    # "index":I
    .restart local v6    # "seekBar":Lcom/android/camera/ui/ProModeSeekBar;
    :cond_3
    iget-object v7, p0, Lcom/android/camera/ManualProModeUI;->mManualEnabled:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 420
    .local v0, "enabled":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 423
    iget-boolean v7, p0, Lcom/android/camera/ManualProModeUI;->mIsEditableMode:Z

    if-eqz v7, :cond_4

    add-int/lit8 v1, v3, 0x1

    .line 424
    .local v1, "factor":I
    :goto_3
    iget-boolean v7, p0, Lcom/android/camera/ManualProModeUI;->mIsEditableMode:Z

    if-nez v7, :cond_5

    move v7, v9

    :goto_4
    invoke-virtual {v6, v7}, Lcom/android/camera/ui/ProModeSeekBar;->setRestrictMode(Z)V

    .line 425
    invoke-virtual {v6}, Lcom/android/camera/ui/ProModeSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 426
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/camera/ManualProModeUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/util/ProductModelUtil;->isLargeScreen(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/camera/ManualProModeUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0900b4

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 428
    .local v5, "radius":I
    :goto_5
    mul-int/lit8 v5, v5, 0x2

    .line 431
    iget-object v7, p0, Lcom/android/camera/ManualProModeUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0900b0

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    mul-int/2addr v7, v1

    add-int/2addr v7, v5

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 432
    invoke-virtual {v6, v4}, Lcom/android/camera/ui/ProModeSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    iget-boolean v7, p0, Lcom/android/camera/ManualProModeUI;->mIsEditableMode:Z

    if-eqz v7, :cond_7

    .line 434
    invoke-virtual {v6, v9}, Lcom/android/camera/ui/ProModeSeekBar;->setIsMovable(Z)V

    .line 435
    invoke-virtual {v6}, Lcom/android/camera/ui/ProModeSeekBar;->setAnimateVisible()V

    .line 440
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 423
    .end local v1    # "factor":I
    .end local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "radius":I
    :cond_4
    const/4 v1, 0x2

    goto :goto_3

    .restart local v1    # "factor":I
    :cond_5
    move v7, v8

    .line 424
    goto :goto_4

    .line 426
    .restart local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    iget-object v7, p0, Lcom/android/camera/ManualProModeUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 427
    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0900b3

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_5

    .line 437
    .restart local v5    # "radius":I
    :cond_7
    invoke-virtual {v6, v8}, Lcom/android/camera/ui/ProModeSeekBar;->setIsMovable(Z)V

    .line 438
    invoke-virtual {v6, p1}, Lcom/android/camera/ui/ProModeSeekBar;->setAnimateGone(Z)V

    goto :goto_6

    .line 442
    .end local v0    # "enabled":Ljava/lang/Boolean;
    .end local v1    # "factor":I
    .end local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "radius":I
    .end local v6    # "seekBar":Lcom/android/camera/ui/ProModeSeekBar;
    :cond_8
    return-void
.end method

.method private initializeManualModeOptions(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 1
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 652
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ManualProModeUI;->initManualModeEvOptions(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 653
    invoke-direct {p0}, Lcom/android/camera/ManualProModeUI;->initManualModeEtOptions()V

    .line 654
    invoke-direct {p0}, Lcom/android/camera/ManualProModeUI;->initManualModeIsoOptions()V

    .line 655
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ManualProModeUI;->initManualModeFocusOptions(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 656
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ManualProModeUI;->initManualModeAwbOptions(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 658
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ManualProModeUI;->initProModeLayout(Z)V

    .line 659
    return-void
.end method

.method private setCameraControlBarOption(Z)V
    .locals 3
    .param p1, "hide"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 445
    if-eqz p1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setAndLockThumbnailVisibilityWithoutClear(I)V

    .line 447
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonVisible(I)V

    .line 452
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setAndLockThumbnailVisibilityWithoutClear(I)V

    .line 450
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonVisible(I)V

    goto :goto_0
.end method

.method private showHintText(Ljava/lang/String;)V
    .locals 4
    .param p1, "hintText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualProHint:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualProHint:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualProHint:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public animateFlash()V
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mController:Lcom/android/camera/ManualController;

    invoke-interface {v0}, Lcom/android/camera/ManualController;->startPreCaptureAnimation()V

    .line 941
    return-void
.end method

.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 252
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1004
    :cond_0
    return-void
.end method

.method public foldAllOptions()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 505
    invoke-direct {p0}, Lcom/android/camera/ManualProModeUI;->hideHintText()V

    .line 506
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeSeekBarList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeSeekBarList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ProModeSeekBar;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/ManualProModeUI;->expandOrFoldOption(Lcom/android/camera/ui/ProModeSeekBar;ZZ)V

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ManualProModeUI;->clearIconBackground()V

    .line 510
    invoke-direct {p0, v3}, Lcom/android/camera/ManualProModeUI;->setCameraControlBarOption(Z)V

    .line 511
    return-void
.end method

.method public getEditableMode()Z
    .locals 1

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/android/camera/ManualProModeUI;->mIsEditableMode:Z

    return v0
.end method

.method public getFaceView()Lcom/android/camera/ui/FaceView;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mPreviewGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public initializeFirstTime()V
    .locals 0

    .prologue
    .line 641
    return-void
.end method

.method public initializeSecondTime(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 0
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 646
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ManualProModeUI;->initializeZoom(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 647
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ManualProModeUI;->initializeManualModeOptions(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 648
    return-void
.end method

.method public initializeZoom(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 9
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    const/4 v3, 0x0

    .line 926
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 927
    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 936
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxZoomRatio()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ManualProModeUI;->mZoomMax:F

    .line 934
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget v1, p0, Lcom/android/camera/ManualProModeUI;->mZoomMax:F

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v2

    const/4 v7, 0x1

    new-instance v8, Lcom/android/camera/ManualProModeUI$ZoomChangeListener;

    const/4 v4, 0x0

    invoke-direct {v8, p0, v4}, Lcom/android/camera/ManualProModeUI$ZoomChangeListener;-><init>(Lcom/android/camera/ManualProModeUI;Lcom/android/camera/ManualProModeUI$1;)V

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFIZZZZLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->isCountingDown()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mController:Lcom/android/camera/ManualController;

    invoke-interface {v0}, Lcom/android/camera/ManualController;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 947
    const/4 v0, 0x1

    .line 949
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraOpened(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
    .locals 0
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 633
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ManualProModeUI;->initializeZoom(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 634
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ManualProModeUI;->initializeManualModeOptions(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 635
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 2
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-static {p1}, Lcom/android/camera/face/FaceDataCreator;->create([Landroid/hardware/Camera$Face;)[Lcom/android/camera/face/FaceData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera/face/FaceData;)V

    .line 1045
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 987
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 991
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ManualProModeUI;->mAspectRatio:F

    .line 995
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/ManualProModeUI;->setEditableMode(ZZ)V

    .line 996
    invoke-virtual {p0}, Lcom/android/camera/ManualProModeUI;->foldAllOptions()V

    .line 997
    return-void
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 260
    return-void
.end method

.method public onPreviewFlipped()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mController:Lcom/android/camera/ManualController;

    invoke-interface {v0}, Lcom/android/camera/ManualController;->updateCameraOrientation()V

    .line 218
    return-void
.end method

.method public onPreviewLayoutChanged(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 197
    sub-int v1, p4, p2

    .line 198
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 199
    .local v0, "height":I
    iget v2, p0, Lcom/android/camera/ManualProModeUI;->mPreviewWidth:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/android/camera/ManualProModeUI;->mPreviewHeight:I

    if-eq v2, v0, :cond_1

    .line 200
    :cond_0
    iput v1, p0, Lcom/android/camera/ManualProModeUI;->mPreviewWidth:I

    .line 201
    iput v0, p0, Lcom/android/camera/ManualProModeUI;->mPreviewHeight:I

    .line 203
    :cond_1
    return-void
.end method

.method public onStartFaceDetection(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1024
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 1025
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 1026
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 1027
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 1029
    :cond_0
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 1035
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 1036
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 1038
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mController:Lcom/android/camera/ManualController;

    invoke-interface {v0}, Lcom/android/camera/ManualController;->onPreviewUIReady()V

    .line 614
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mController:Lcom/android/camera/ManualController;

    invoke-interface {v0}, Lcom/android/camera/ManualController;->onPreviewUIDestroyed()V

    .line 624
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 619
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 629
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 1011
    :cond_0
    return-void
.end method

.method public resetPreviewOverlay()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->reset()V

    .line 292
    :cond_0
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 1018
    :cond_0
    return-void
.end method

.method public setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 236
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 958
    :cond_0
    return-void
.end method

.method public setEditableMode(ZZ)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "animateOnly"    # Z

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/android/camera/ManualProModeUI;->mIsEditableMode:Z

    if-ne v0, p1, :cond_1

    .line 516
    if-eqz p1, :cond_0

    .line 517
    invoke-direct {p0}, Lcom/android/camera/ManualProModeUI;->animateProModeLayout()V

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    if-nez p2, :cond_0

    .line 523
    iput-boolean p1, p0, Lcom/android/camera/ManualProModeUI;->mIsEditableMode:Z

    .line 524
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ManualProModeUI;->initProModeLayout(Z)V

    .line 525
    iget-boolean v0, p0, Lcom/android/camera/ManualProModeUI;->mIsEditableMode:Z

    invoke-direct {p0, v0}, Lcom/android/camera/ManualProModeUI;->setCameraControlBarOption(Z)V

    goto :goto_0
.end method

.method public setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/FaceView$OnFaceChangedListener;

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 592
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 1049
    iput p1, p0, Lcom/android/camera/ManualProModeUI;->mOrientation:I

    .line 1050
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeRotateList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1051
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeRotateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1052
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeRotateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1051
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1055
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeSeekBarList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1056
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeSeekBarList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1057
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeSeekBarList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/ProModeSeekBar;->setOrientation(IZ)V

    .line 1056
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1060
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ManualProModeUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 1061
    :cond_2
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 983
    return-void
.end method

.method public setViewVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualProModeRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1066
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualModeControlBar:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualModeControlBar:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualWTSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualWTSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 1068
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 1069
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 1070
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 1071
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 1072
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 1073
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualZoomSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mManualZoomSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProModeSeekBar;->requestLayout()V

    .line 1074
    :cond_7
    return-void
.end method

.method public setZoom(F)V
    .locals 1
    .param p1, "zoomValue"    # F

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PreviewOverlay;->setZoom(F)V

    .line 1080
    :cond_0
    return-void
.end method

.method public shouldAutoAdjustTransformMatrixOnLayout()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public startCountdown(I)V
    .locals 1
    .param p1, "sec"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->startCountDown(I)V

    .line 228
    return-void
.end method

.method public updateManualContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 761
    const/4 v5, 0x0

    .line 762
    .local v5, "text":Ljava/lang/String;
    const/4 v3, -0x1

    .line 763
    .local v3, "icon_not_exist":I
    const/4 v2, -0x1

    .line 766
    .local v2, "icon":I
    const-string v6, "pref_camera_wide_tele_key"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mWTItemLists:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 767
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualWTSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6}, Lcom/android/camera/ui/ProModeSeekBar;->getProgress()I

    move-result v4

    .line 768
    .local v4, "progress":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mWTItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 769
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mWTItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v6}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 770
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mWTItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    .line 771
    .local v0, "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    invoke-virtual {v0}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v5

    .line 772
    sget-object v6, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->MANI:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    invoke-virtual {v0, v6}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getIcon(Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;)I

    move-result v2

    .line 773
    move v4, v1

    .line 777
    .end local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    :cond_0
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualWTTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    if-eq v2, v8, :cond_1

    .line 779
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualWTIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 781
    :cond_1
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualWTSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6, v4}, Lcom/android/camera/ui/ProModeSeekBar;->setProgress(I)V

    .line 870
    .end local v1    # "i":I
    .end local v4    # "progress":I
    :cond_2
    :goto_1
    return-void

    .line 768
    .restart local v1    # "i":I
    .restart local v4    # "progress":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 782
    .end local v1    # "i":I
    .end local v4    # "progress":I
    :cond_4
    const-string v6, "pref_camera_manual_exposure_key"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mEVItemLists:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    .line 783
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6}, Lcom/android/camera/ui/ProModeSeekBar;->getProgress()I

    move-result v4

    .line 784
    .restart local v4    # "progress":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mEVItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 785
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mEVItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v6}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 786
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mEVItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    .line 787
    .restart local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    invoke-virtual {v0}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v5

    .line 788
    move v4, v1

    .line 792
    .end local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    :cond_5
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualEvTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6, v4}, Lcom/android/camera/ui/ProModeSeekBar;->setProgress(I)V

    goto :goto_1

    .line 784
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 794
    .end local v1    # "i":I
    .end local v4    # "progress":I
    :cond_7
    const-string v6, "pref_camera_manual_exposure_time_key"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mETItemLists:Ljava/util/ArrayList;

    if-eqz v6, :cond_b

    .line 795
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6}, Lcom/android/camera/ui/ProModeSeekBar;->getProgress()I

    move-result v4

    .line 796
    .restart local v4    # "progress":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mETItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 797
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mETItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v6}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 798
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mETItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    .line 799
    .restart local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    invoke-virtual {v0}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v5

    .line 800
    move v4, v1

    .line 804
    .end local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    :cond_8
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualEtTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualEtSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6, v4}, Lcom/android/camera/ui/ProModeSeekBar;->setProgress(I)V

    .line 806
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f080404

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 807
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6, v10}, Lcom/android/camera/ui/ProModeSeekBar;->setIsTouchEnabled(Z)V

    .line 808
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6, v10}, Lcom/android/camera/ui/RotateLayout;->setClickable(Z)V

    .line 809
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualEvTv:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 810
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualEvIcon:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_1

    .line 796
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 812
    :cond_a
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualEvSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6, v9}, Lcom/android/camera/ui/ProModeSeekBar;->setIsTouchEnabled(Z)V

    .line 813
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v6, v9}, Lcom/android/camera/ui/RotateLayout;->setClickable(Z)V

    .line 814
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualEvTv:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/camera/ManualProModeUI;->mDisableColor:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 815
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualEvIcon:Landroid/widget/ImageView;

    const v7, -0x777778

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto/16 :goto_1

    .line 817
    .end local v1    # "i":I
    .end local v4    # "progress":I
    :cond_b
    const-string v6, "pref_camera_manual_exposure_iso"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mISOItemLists:Ljava/util/ArrayList;

    if-eqz v6, :cond_e

    .line 818
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6}, Lcom/android/camera/ui/ProModeSeekBar;->getProgress()I

    move-result v4

    .line 819
    .restart local v4    # "progress":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mISOItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_c

    .line 820
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mISOItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v6}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 821
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mISOItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    .line 822
    .restart local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    invoke-virtual {v0}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v5

    .line 823
    move v4, v1

    .line 827
    .end local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    :cond_c
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualIsoTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualIsoSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6, v4}, Lcom/android/camera/ui/ProModeSeekBar;->setProgress(I)V

    goto/16 :goto_1

    .line 819
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 829
    .end local v1    # "i":I
    .end local v4    # "progress":I
    :cond_e
    const-string v6, "pref_camera_manual_focus_mode"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mMFItemLists:Ljava/util/ArrayList;

    if-eqz v6, :cond_11

    .line 830
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6}, Lcom/android/camera/ui/ProModeSeekBar;->getProgress()I

    move-result v4

    .line 831
    .restart local v4    # "progress":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mMFItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_f

    .line 832
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mMFItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v6}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 833
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mMFItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    .line 834
    .restart local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    invoke-virtual {v0}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v5

    .line 835
    move v4, v1

    .line 839
    .end local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    :cond_f
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualMfTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualMfSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6, v4}, Lcom/android/camera/ui/ProModeSeekBar;->setProgress(I)V

    goto/16 :goto_1

    .line 831
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 841
    .end local v1    # "i":I
    .end local v4    # "progress":I
    :cond_11
    const-string v6, "pref_camera_whitebalance_mode_key"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mWBItemLists:Ljava/util/ArrayList;

    if-eqz v6, :cond_16

    .line 842
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6}, Lcom/android/camera/ui/ProModeSeekBar;->getProgress()I

    move-result v4

    .line 843
    .restart local v4    # "progress":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mWBItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_12

    .line 844
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mWBItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v6}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 845
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mWBItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    .line 846
    .restart local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    sget-object v6, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->MANI:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    invoke-virtual {v0, v6}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getIcon(Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;)I

    move-result v2

    .line 847
    invoke-virtual {v0}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v5

    .line 848
    move v4, v1

    .line 852
    .end local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    :cond_12
    if-eqz v5, :cond_13

    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 853
    :cond_13
    if-eq v2, v8, :cond_14

    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 854
    :cond_14
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualAwbSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6, v4}, Lcom/android/camera/ui/ProModeSeekBar;->setProgress(I)V

    goto/16 :goto_1

    .line 843
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 855
    .end local v1    # "i":I
    .end local v4    # "progress":I
    :cond_16
    const-string v6, "pref_camera_zoom_key"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mZoomItemLists:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 856
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualZoomSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6}, Lcom/android/camera/ui/ProModeSeekBar;->getProgress()I

    move-result v4

    .line 857
    .restart local v4    # "progress":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mZoomItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_17

    .line 858
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mZoomItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v6}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1a

    .line 859
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mZoomItemLists:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    .line 860
    .restart local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    sget-object v6, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->MANI:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    invoke-virtual {v0, v6}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getIcon(Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;)I

    move-result v2

    .line 861
    invoke-virtual {v0}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v5

    .line 862
    move v4, v1

    .line 866
    .end local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    :cond_17
    if-eqz v5, :cond_18

    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualZoomTv:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    :cond_18
    if-eq v2, v8, :cond_19

    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualZoomIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 868
    :cond_19
    iget-object v6, p0, Lcom/android/camera/ManualProModeUI;->mManualZoomSeekBar:Lcom/android/camera/ui/ProModeSeekBar;

    invoke-virtual {v6, v4}, Lcom/android/camera/ui/ProModeSeekBar;->setProgress(I)V

    goto/16 :goto_1

    .line 857
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 3
    .param p1, "aspectRatio"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 596
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 597
    sget-object v0, Lcom/android/camera/ManualProModeUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid aspect ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    .line 601
    div-float p1, v1, p1

    .line 604
    :cond_2
    iget v0, p0, Lcom/android/camera/ManualProModeUI;->mAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 605
    iput p1, p0, Lcom/android/camera/ManualProModeUI;->mAspectRatio:F

    .line 607
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI;->mController:Lcom/android/camera/ManualController;

    iget v1, p0, Lcom/android/camera/ManualProModeUI;->mAspectRatio:F

    invoke-interface {v0, v1}, Lcom/android/camera/ManualController;->updatePreviewAspectRatio(F)V

    goto :goto_0
.end method

.method public useModuleListenerFirst()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method
