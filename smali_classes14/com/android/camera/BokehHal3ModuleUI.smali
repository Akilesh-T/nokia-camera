.class public Lcom/android/camera/BokehHal3ModuleUI;
.super Ljava/lang/Object;
.source "BokehHal3ModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
.implements Lcom/android/camera/one/OneCamera$FaceDetectionListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsScrollHanlder;,
        Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsClickHandler;,
        Lcom/android/camera/BokehHal3ModuleUI$CaptureModuleUIListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final MAX_DURATION:I

.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private final mAppController:Lcom/android/camera/app/AppController;

.field private mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

.field private mControlBar:Landroid/widget/LinearLayout;

.field private mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

.field private mControlBarImg:Landroid/widget/ImageView;

.field private mControlSeekBar:Landroid/widget/SeekBar;

.field private mConverter:Lcom/android/camera/face/Camera2FaceConverter;

.field private mCountdownView:Lcom/android/camera/ui/CountDownView;

.field private final mFaceView:Lcom/android/camera/ui/FaceView;

.field private final mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private mGLView:Landroid/opengl/GLSurfaceView;

.field private mHintToast:Lcom/android/camera/ui/RotateTextToast;

.field private mInitializeFirstTime:Z

.field private final mListener:Lcom/android/camera/BokehHal3ModuleUI$CaptureModuleUIListener;

.field private mManualModeOptionsContainer:Landroid/widget/LinearLayout;

.field private mManualModeRootView:Landroid/widget/FrameLayout;

.field private mManualOptionBackgroundColor:I

.field private mMaxZoom:F

.field private final mModuleRoot:Landroid/view/View;

.field private mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

.field private mOrientation:I

.field private mPreviewArea:Landroid/graphics/RectF;

.field private final mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private final mPreviewView:Landroid/view/TextureView;

.field private final mRootView:Landroid/view/View;

.field mZeissBokehClickHandler:Landroid/view/View$OnClickListener;

.field private mZeissBokehCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

.field private mZeissBokehIcon:Landroid/widget/ImageView;

.field private mZeissBokehLayout:Landroid/widget/FrameLayout;

.field private mZeissBokehOptions:Landroid/widget/LinearLayout;

.field private mZeissBokehRotateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/RotateLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mZeissBokehScroll:Lcom/android/camera/ui/ManualModeHorizontalScrollView;

.field private mZeissBokehTv:Landroid/widget/TextView;

.field private final mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BokehHal3ModuleUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/BokehHal3ModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/app/AppController;Landroid/view/View;Lcom/android/camera/BokehHal3ModuleUI$CaptureModuleUIListener;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "appController"    # Lcom/android/camera/app/AppController;
    .param p3, "parent"    # Landroid/view/View;
    .param p4, "listener"    # Lcom/android/camera/BokehHal3ModuleUI$CaptureModuleUIListener;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mMaxZoom:F

    .line 98
    iput v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZoomValue:F

    .line 102
    iput-boolean v2, p0, Lcom/android/camera/BokehHal3ModuleUI;->mInitializeFirstTime:Z

    .line 113
    const/16 v1, 0x2710

    iput v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->MAX_DURATION:I

    .line 117
    new-instance v1, Lcom/android/camera/BokehHal3ModuleUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/BokehHal3ModuleUI$1;-><init>(Lcom/android/camera/BokehHal3ModuleUI;)V

    iput-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .line 256
    iput v2, p0, Lcom/android/camera/BokehHal3ModuleUI;->mManualOptionBackgroundColor:I

    .line 292
    new-instance v1, Lcom/android/camera/BokehHal3ModuleUI$4;

    invoke-direct {v1, p0}, Lcom/android/camera/BokehHal3ModuleUI$4;-><init>(Lcom/android/camera/BokehHal3ModuleUI;)V

    iput-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehClickHandler:Landroid/view/View$OnClickListener;

    .line 148
    iput-object p1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 149
    iput-object p2, p0, Lcom/android/camera/BokehHal3ModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    .line 150
    iput-object p4, p0, Lcom/android/camera/BokehHal3ModuleUI;->mListener:Lcom/android/camera/BokehHal3ModuleUI$CaptureModuleUIListener;

    .line 151
    iput-object p3, p0, Lcom/android/camera/BokehHal3ModuleUI;->mRootView:Landroid/view/View;

    .line 153
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 154
    .local v0, "moduleRoot":Landroid/view/ViewGroup;
    iput-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mModuleRoot:Landroid/view/View;

    .line 156
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mPreviewView:Landroid/view/TextureView;

    .line 158
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 160
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 162
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FaceView;

    iput-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 166
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/BokehHal3ModuleUI;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3ModuleUI;
    .param p1, "x1"    # F

    .prologue
    .line 70
    iput p1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZoomValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/BokehHal3ModuleUI$CaptureModuleUIListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3ModuleUI;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mListener:Lcom/android/camera/BokehHal3ModuleUI$CaptureModuleUIListener;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/BokehHal3ModuleUI;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3ModuleUI;
    .param p1, "x1"    # Landroid/widget/SeekBar;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/BokehHal3ModuleUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3ModuleUI;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mControlBarImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/camera/BokehHal3ModuleUI;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3ModuleUI;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mControlBarImg:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/camera/BokehHal3ModuleUI;Lcom/android/camera/one/OneCamera$Facing;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3ModuleUI;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/camera/BokehHal3ModuleUI;->initBokehControl(Lcom/android/camera/one/OneCamera$Facing;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/BokehHal3ModuleUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3ModuleUI;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/camera/BokehHal3ModuleUI;->initZeissBokehModeLayout()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/ui/PreviewOverlay;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3ModuleUI;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/BokehHal3ModuleUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3ModuleUI;

    .prologue
    .line 70
    iget v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mOrientation:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/BokehHal3ModuleUI;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3ModuleUI;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/BokehHal3ModuleUI;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3ModuleUI;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/camera/BokehHal3ModuleUI;->setZeissBokehOptionVisibility(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3ModuleUI;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/BokehHal3ModuleUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3ModuleUI;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/face/Camera2FaceConverter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3ModuleUI;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    return-object v0
.end method

.method static synthetic access$2000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/camera/BokehHal3ModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/BokehHal3ModuleUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3ModuleUI;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mModuleRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3ModuleUI;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/ui/CountDownView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3ModuleUI;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/BokehHal3ModuleUI;Lcom/android/camera/ui/CountDownView;)Lcom/android/camera/ui/CountDownView;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3ModuleUI;
    .param p1, "x1"    # Lcom/android/camera/ui/CountDownView;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3ModuleUI;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/BokehHal3ModuleUI;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3ModuleUI;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/BokehHal3ModuleUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3ModuleUI;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/ui/RotateLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3ModuleUI;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/camera/BokehHal3ModuleUI;Lcom/android/camera/ui/RotateLayout;)Lcom/android/camera/ui/RotateLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3ModuleUI;
    .param p1, "x1"    # Lcom/android/camera/ui/RotateLayout;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    return-object p1
.end method

.method private addZeissBokehModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V
    .locals 2
    .param p1, "layout"    # Lcom/android/camera/ui/RotateLayout;

    .prologue
    .line 288
    iget v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mOrientation:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 289
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehRotateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    return-void
.end method

.method private inflateMenuModeOptions(Ljava/util/ArrayList;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p2, "optionRootView"    # Landroid/widget/LinearLayout;
    .param p3, "rootView"    # Landroid/widget/FrameLayout;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "currentValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Landroid/widget/FrameLayout;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 343
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v10, :cond_4

    .line 344
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int v1, v10, v11

    .line 345
    .local v1, "diff":I
    if-lez v1, :cond_0

    .line 346
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v3, v10, :cond_1

    .line 347
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 346
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 349
    .end local v3    # "i":I
    :cond_0
    if-gez v1, :cond_1

    .line 350
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-ge v3, v10, :cond_1

    .line 351
    iget-object v10, p0, Lcom/android/camera/BokehHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 352
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x7f04004e

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 353
    .local v7, "layout":Landroid/view/View;
    invoke-virtual {p2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 354
    const v10, 0x7f0f0156

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v10}, Lcom/android/camera/BokehHal3ModuleUI;->addZeissBokehModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 350
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 357
    .end local v3    # "i":I
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .end local v7    # "layout":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 358
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 359
    .restart local v7    # "layout":Landroid/view/View;
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 360
    const v10, 0x7f0f0157

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 361
    .local v2, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v10}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 362
    const v10, 0x7f020273

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 367
    :goto_3
    const v10, 0x7f0f0158

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 368
    .local v4, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 369
    .local v8, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v10, 0x11

    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 371
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    sget-object v11, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->NORMAL:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    invoke-virtual {v10, v11}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getIcon(Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 372
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 374
    const v10, 0x7f0f0159

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 375
    .local v9, "tv":Landroid/widget/TextView;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v10}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v10}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 379
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    new-instance v10, Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsClickHandler;

    move-object/from16 v0, p4

    invoke-direct {v10, p0, v0}, Lcom/android/camera/BokehHal3ModuleUI$ManualOptionsClickHandler;-><init>(Lcom/android/camera/BokehHal3ModuleUI;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 364
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v8    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v9    # "tv":Landroid/widget/TextView;
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 382
    .end local v2    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v7    # "layout":Landroid/view/View;
    :cond_3
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 383
    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 384
    const/4 v6, 0x1

    .line 390
    .end local v1    # "diff":I
    .end local v3    # "i":I
    .local v6, "isSuccess":Z
    :goto_4
    return v6

    .line 386
    .end local v6    # "isSuccess":Z
    :cond_4
    const/16 v10, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 387
    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 388
    const/4 v6, 0x0

    .restart local v6    # "isSuccess":Z
    goto :goto_4
.end method

.method private initBokehControl(Lcom/android/camera/one/OneCamera$Facing;)V
    .locals 8
    .param p1, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 169
    iget-object v3, p0, Lcom/android/camera/BokehHal3ModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 170
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/camera/BokehHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->is18x9Layout()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f090034

    :goto_0
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 171
    iget-object v3, p0, Lcom/android/camera/BokehHal3ModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v3, p0, Lcom/android/camera/BokehHal3ModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/BokehHal3ModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_livebokeh_level_key"

    iget-object v6, p0, Lcom/android/camera/BokehHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f080401

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v1

    .line 174
    .local v1, "bokehLevel":I
    iget-object v3, p0, Lcom/android/camera/BokehHal3ModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "pref_beauty_level_key"

    iget-object v6, p0, Lcom/android/camera/BokehHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v7, 0x7f08035f

    .line 175
    invoke-virtual {v6, v7}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 174
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    .line 176
    .local v0, "beautylevel":I
    iget-object v4, p0, Lcom/android/camera/BokehHal3ModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v3, :cond_1

    const/16 v3, 0x64

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 177
    iget-object v3, p0, Lcom/android/camera/BokehHal3ModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v4, :cond_2

    .end local v1    # "bokehLevel":I
    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 178
    iget-object v3, p0, Lcom/android/camera/BokehHal3ModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    const/4 v4, -0x1

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 179
    iget-object v3, p0, Lcom/android/camera/BokehHal3ModuleUI;->mControlSeekBar:Landroid/widget/SeekBar;

    new-instance v4, Lcom/android/camera/BokehHal3ModuleUI$2;

    invoke-direct {v4, p0, p1}, Lcom/android/camera/BokehHal3ModuleUI$2;-><init>(Lcom/android/camera/BokehHal3ModuleUI;Lcom/android/camera/one/OneCamera$Facing;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 200
    return-void

    .line 170
    .end local v0    # "beautylevel":I
    :cond_0
    const v3, 0x7f090033

    goto :goto_0

    .line 176
    .restart local v0    # "beautylevel":I
    .restart local v1    # "bokehLevel":I
    :cond_1
    sget v3, Lcom/android/camera/BeautyController;->BEAUTY_CONTROL_LEVEL:I

    goto :goto_1

    :cond_2
    move v1, v0

    .line 177
    goto :goto_2
.end method

.method private initZeissBokehModeLayout()V
    .locals 6

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_zeiss_bokeh_key"

    iget-object v4, p0, Lcom/android/camera/BokehHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f08042a

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00ad

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mManualModeRootView:Landroid/widget/FrameLayout;

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehRotateList:Ljava/util/List;

    .line 264
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0e0083

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mManualOptionBackgroundColor:I

    .line 265
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mManualModeRootView:Landroid/widget/FrameLayout;

    const v2, 0x7f0f00ae

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mManualModeOptionsContainer:Landroid/widget/LinearLayout;

    .line 266
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mManualModeOptionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 267
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->is18x9Layout()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f090034

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 269
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mManualModeOptionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f0140

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehLayout:Landroid/widget/FrameLayout;

    .line 272
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f0142

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehIcon:Landroid/widget/ImageView;

    .line 273
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehIcon:Landroid/widget/ImageView;

    const v2, 0x7f020100

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 274
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f0143

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehTv:Landroid/widget/TextView;

    .line 275
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f0147

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehOptions:Landroid/widget/LinearLayout;

    .line 276
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f0141

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    iput-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    .line 277
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    iget-object v2, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f0146

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ManualModeHorizontalScrollView;

    iput-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehScroll:Lcom/android/camera/ui/ManualModeHorizontalScrollView;

    .line 284
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v1}, Lcom/android/camera/BokehHal3ModuleUI;->addZeissBokehModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 285
    return-void

    .line 267
    :cond_0
    const v1, 0x7f090033

    goto :goto_0
.end method

.method private setZeissBokehOptionVisibility(Z)V
    .locals 5
    .param p1, "forceFold"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 312
    iget-object v4, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    move v1, v3

    .line 313
    .local v1, "visible":I
    :goto_0
    if-eqz p1, :cond_0

    const/16 v1, 0x8

    .line 316
    :cond_0
    iget-object v4, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 331
    :goto_1
    return-void

    .end local v1    # "visible":I
    :cond_1
    move v1, v2

    .line 312
    goto :goto_0

    .line 318
    .restart local v1    # "visible":I
    :cond_2
    if-nez v1, :cond_3

    iget v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mManualOptionBackgroundColor:I

    .line 319
    .local v0, "backgroundColor":I
    :goto_2
    iget-object v4, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 320
    iget-object v4, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 323
    iget-object v4, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehScroll:Lcom/android/camera/ui/ManualModeHorizontalScrollView;

    invoke-virtual {v4, v1}, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->setVisibility(I)V

    .line 324
    if-ne v1, v3, :cond_4

    .line 326
    iget-object v3, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    goto :goto_1

    .end local v0    # "backgroundColor":I
    :cond_3
    move v0, v2

    .line 318
    goto :goto_2

    .line 329
    .restart local v0    # "backgroundColor":I
    :cond_4
    iget-object v2, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 529
    :cond_0
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 583
    :cond_0
    return-void
.end method

.method public foldAllOptions()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 307
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/BokehHal3ModuleUI;->setZeissBokehOptionVisibility(Z)V

    .line 309
    :cond_0
    return-void
.end method

.method public getBitMapFromPreview()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 540
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 541
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0, v5}, Lcom/android/camera/BokehHal3ModuleUI;->getPreviewTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    .line 542
    iget-object v2, p0, Lcom/android/camera/BokehHal3ModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 543
    .local v0, "src":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getBitMapFromPreview(I)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    .line 547
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 548
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0, v5}, Lcom/android/camera/BokehHal3ModuleUI;->getPreviewTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    .line 549
    int-to-float v2, p1

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 550
    iget-object v2, p0, Lcom/android/camera/BokehHal3ModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 551
    .local v0, "src":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getFaceView()Lcom/android/camera/ui/FaceView;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public getPreviewAreaHeight()I
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewAreaWidth()I
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public initZeissBokehOptions()V
    .locals 6

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/ManualDataUtil;->getBokehModeItems(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 335
    .local v1, "zeissBokehItemLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v2, "pref_zeiss_bokeh_key"

    invoke-virtual {v0, v2}, Lcom/android/camera/settings/SettingsManager;->getStringDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 336
    .local v5, "defaultValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehOptions:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehLayout:Landroid/widget/FrameLayout;

    const-string v4, "pref_zeiss_bokeh_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/BokehHal3ModuleUI;->inflateMenuModeOptions(Ljava/util/ArrayList;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Ljava/lang/String;Ljava/lang/String;)Z

    .line 337
    return-void
.end method

.method public initializeZoom(FF)V
    .locals 3
    .param p1, "maxZoom"    # F
    .param p2, "currentZoom"    # F

    .prologue
    .line 561
    iput p1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mMaxZoom:F

    .line 562
    iput p2, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZoomValue:F

    .line 563
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/camera/face/Camera2FaceConverter;->setZoomValue(F)V

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mMaxZoom:F

    iget-object v2, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    .line 567
    return-void
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->isCountingDown()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadModuleLayout(Lcom/android/camera/one/OneCamera$Facing;)V
    .locals 4
    .param p1, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 203
    iget-boolean v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mInitializeFirstTime:Z

    if-eqz v1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 204
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mInitializeFirstTime:Z

    .line 205
    iput-object p1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 206
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/support/v4/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, "asyncLayoutInflater":Landroid/support/v4/view/AsyncLayoutInflater;
    const v2, 0x7f040024

    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mModuleRoot:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/camera/BokehHal3ModuleUI$3;

    invoke-direct {v3, p0, p1}, Lcom/android/camera/BokehHal3ModuleUI$3;-><init>(Lcom/android/camera/BokehHal3ModuleUI;Lcom/android/camera/one/OneCamera$Facing;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    goto :goto_0
.end method

.method public onFaceDetection([Landroid/hardware/camera2/params/Face;)V
    .locals 2
    .param p1, "faceList"    # [Landroid/hardware/camera2/params/Face;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    if-nez v0, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    invoke-virtual {v1, p1}, Lcom/android/camera/face/Camera2FaceConverter;->convertCamera2Face([Landroid/hardware/camera2/params/Face;)[Lcom/android/camera/face/FaceData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera/face/FaceData;)V

    goto :goto_0
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    .line 628
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 634
    :cond_1
    return-void
.end method

.method public onStartFaceDetection(IZLcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z
    .param p3, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p4, "pictureSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 600
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 602
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 603
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 604
    new-instance v0, Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZoomValue:F

    invoke-direct {v0, p3, p2, v1, p4}, Lcom/android/camera/face/Camera2FaceConverter;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;ZFLcom/android/camera/util/Size;)V

    iput-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 606
    :cond_0
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 611
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 613
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 615
    :cond_0
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 595
    :cond_0
    return-void
.end method

.method public removeHintToastIfConfigured()V
    .locals 1

    .prologue
    .line 684
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->showHintForMainBokehCap()Z

    move-result v0

    if-nez v0, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mHintToast:Lcom/android/camera/ui/RotateTextToast;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mHintToast:Lcom/android/camera/ui/RotateTextToast;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->removeExistToast()V

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mHintToast:Lcom/android/camera/ui/RotateTextToast;

    goto :goto_0
.end method

.method public resumeFaceDetection()V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 589
    :cond_0
    return-void
.end method

.method public setControlBarVisibility()V
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 659
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    :cond_0
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqZeissBokeh()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 669
    :cond_2
    :goto_0
    return-void

    .line 665
    :cond_3
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mControlBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .line 514
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 515
    :cond_0
    return-void
.end method

.method public setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/FaceView$OnFaceChangedListener;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 577
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 638
    iput p1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mOrientation:I

    .line 639
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 640
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mControlBarIcon:Lcom/android/camera/ui/RotateLayout;

    iget v2, p0, Lcom/android/camera/BokehHal3ModuleUI;->mOrientation:I

    invoke-virtual {v1, v2, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 641
    :cond_1
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehRotateList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 642
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehRotateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 643
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mZeissBokehRotateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 646
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mHintToast:Lcom/android/camera/ui/RotateTextToast;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mHintToast:Lcom/android/camera/ui/RotateTextToast;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/RotateTextToast;->setOrientation(I)V

    .line 647
    :cond_3
    return-void
.end method

.method public setPictureTakingProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 537
    return-void
.end method

.method public showDebugMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 494
    return-void
.end method

.method public showHintToastIfConfigured()V
    .locals 4

    .prologue
    .line 672
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->showHintForMainBokehCap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    :goto_0
    return-void

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mHintToast:Lcom/android/camera/ui/RotateTextToast;

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mHintToast:Lcom/android/camera/ui/RotateTextToast;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->removeExistToast()V

    .line 677
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mHintToast:Lcom/android/camera/ui/RotateTextToast;

    .line 679
    :cond_1
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/BokehHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f080069

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/BokehHal3ModuleUI;->mOrientation:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mHintToast:Lcom/android/camera/ui/RotateTextToast;

    .line 680
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mHintToast:Lcom/android/camera/ui/RotateTextToast;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    goto :goto_0
.end method

.method public startCountdown(I)V
    .locals 1
    .param p1, "sec"    # I

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->startCountDown(I)V

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    invoke-interface {v0}, Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;->onCountDownFinished()V

    goto :goto_0
.end method

.method public switchCamera(Lcom/android/camera/one/OneCamera$Facing;)V
    .locals 2
    .param p1, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 650
    iput-object p1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 651
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI;->mControlBarImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 652
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI;->mControlBarImg:Landroid/widget/ImageView;

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v0, :cond_1

    const v0, 0x7f020262

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 653
    invoke-direct {p0, p1}, Lcom/android/camera/BokehHal3ModuleUI;->initBokehControl(Lcom/android/camera/one/OneCamera$Facing;)V

    .line 654
    invoke-virtual {p0}, Lcom/android/camera/BokehHal3ModuleUI;->setControlBarVisibility()V

    .line 656
    :cond_0
    return-void

    .line 652
    :cond_1
    const v0, 0x7f02007e

    goto :goto_0
.end method
