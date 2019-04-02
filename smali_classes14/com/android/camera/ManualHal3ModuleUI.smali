.class public Lcom/android/camera/ManualHal3ModuleUI;
.super Lcom/android/camera/ManualAbstractHal3UI;
.source "ManualHal3ModuleUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ManualHal3ModuleUI$ManualOptionsClickHandler;,
        Lcom/android/camera/ManualHal3ModuleUI$ManualOptionsScrollHanlder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private mAwbLeftIndicator:Landroid/widget/ImageView;

.field private mAwbRightIndicator:Landroid/widget/ImageView;

.field private mConverter:Lcom/android/camera/face/Camera2FaceConverter;

.field private mCountdownView:Lcom/android/camera/ui/CountDownView;

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

.field private mEvLeftIndicator:Landroid/widget/ImageView;

.field private mEvRightIndicator:Landroid/widget/ImageView;

.field private final mFaceView:Lcom/android/camera/ui/FaceView;

.field private final mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

.field private mInitializeFirstTime:Z

.field private mIsLayoutInflated:Z

.field private final mListener:Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;

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

.field private mManualAwbLayout:Landroid/widget/LinearLayout;

.field private mManualAwbOptions:Landroid/widget/LinearLayout;

.field private mManualAwbScroll:Lcom/android/camera/ui/ManualModeHorizontalScrollView;

.field private mManualAwbTv:Landroid/widget/TextView;

.field private mManualClickHandler:Landroid/view/View$OnClickListener;

.field private mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

.field private mManualEvIcon:Landroid/widget/ImageView;

.field private mManualEvLayout:Landroid/widget/LinearLayout;

.field private mManualEvOptions:Landroid/widget/LinearLayout;

.field private mManualEvScroll:Lcom/android/camera/ui/ManualModeHorizontalScrollView;

.field private mManualEvTv:Landroid/widget/TextView;

.field private mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

.field private mManualMfIcon:Landroid/widget/ImageView;

.field private mManualMfLayout:Landroid/widget/LinearLayout;

.field private mManualMfOptions:Landroid/widget/LinearLayout;

.field private mManualMfTv:Landroid/widget/TextView;

.field private mManualModeRootView:Landroid/widget/LinearLayout;

.field private mManualModeRotateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/RotateLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mManualOptionBackgroundColor:I

.field private mMaxZoom:F

.field private mMfGap:Landroid/view/View;

.field private final mModuleRoot:Landroid/view/View;

.field private mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

.field private mOrientation:I

.field private mPause:Z

.field private mPreviewArea:Landroid/graphics/RectF;

.field private final mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private final mPreviewView:Landroid/view/TextureView;

.field private final mRootView:Landroid/view/View;

.field private final mSettingsManager:Lcom/android/camera/settings/SettingsManager;

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

.field private final mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ManualHal3ModuleUI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ManualHal3ModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Landroid/view/View;Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0}, Lcom/android/camera/ManualAbstractHal3UI;-><init>()V

    .line 85
    iput v2, p0, Lcom/android/camera/ManualHal3ModuleUI;->mMaxZoom:F

    .line 86
    iput v2, p0, Lcom/android/camera/ManualHal3ModuleUI;->mZoomValue:F

    .line 90
    iput-boolean v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mInitializeFirstTime:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mIsLayoutInflated:Z

    .line 98
    iput v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualOptionBackgroundColor:I

    .line 137
    new-instance v1, Lcom/android/camera/ManualHal3ModuleUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualHal3ModuleUI$1;-><init>(Lcom/android/camera/ManualHal3ModuleUI;)V

    iput-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .line 362
    new-instance v1, Lcom/android/camera/ManualHal3ModuleUI$3;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualHal3ModuleUI$3;-><init>(Lcom/android/camera/ManualHal3ModuleUI;)V

    iput-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    .line 168
    iput-object p1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    .line 169
    invoke-virtual {p1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 170
    iput-object p3, p0, Lcom/android/camera/ManualHal3ModuleUI;->mListener:Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;

    .line 171
    iput-object p2, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    .line 173
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 174
    .local v0, "moduleRoot":Landroid/view/ViewGroup;
    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mModuleRoot:Landroid/view/View;

    .line 176
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mPreviewView:Landroid/view/TextureView;

    .line 178
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PreviewOverlay;

    iput-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 180
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/focus/FocusRing;

    iput-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    .line 182
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v2, 0x7f0f00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/FaceView;

    iput-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 186
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ManualHal3ModuleUI;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ModuleUI;
    .param p1, "x1"    # F

    .prologue
    .line 67
    iput p1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mZoomValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ManualHal3ModuleUI;)Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ModuleUI;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mListener:Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ManualHal3ModuleUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ModuleUI;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mOrientation:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ManualHal3ModuleUI;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ModuleUI;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualModeRotateList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/ManualHal3ModuleUI;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ModuleUI;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/camera/ManualHal3ModuleUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ModuleUI;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mIsLayoutInflated:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/camera/ManualHal3ModuleUI;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ModuleUI;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/camera/ManualHal3ModuleUI;->expandOrFoldEvOption(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/ManualHal3ModuleUI;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ModuleUI;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/camera/ManualHal3ModuleUI;->expandOrFoldMfOption(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/ManualHal3ModuleUI;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ModuleUI;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/camera/ManualHal3ModuleUI;->expandOrFoldAwbOption(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/ManualHal3ModuleUI;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ModuleUI;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/ManualHal3ModuleUI;)Lcom/android/camera/settings/SettingsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ModuleUI;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ManualHal3ModuleUI;)Lcom/android/camera/face/Camera2FaceConverter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ModuleUI;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ManualHal3ModuleUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ModuleUI;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mModuleRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ManualHal3ModuleUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ModuleUI;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mPause:Z

    return v0
.end method

.method static synthetic access$500()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/camera/ManualHal3ModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/ManualHal3ModuleUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ModuleUI;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/camera/ManualHal3ModuleUI;->initManualModeLayout()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/ManualHal3ModuleUI;Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ModuleUI;
    .param p1, "x1"    # Lcom/android/camera/one/OneCameraCharacteristics;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/camera/ManualHal3ModuleUI;->initializeManualModeOptions(Lcom/android/camera/one/OneCameraCharacteristics;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/ManualHal3ModuleUI;)Lcom/android/camera/ui/CountDownView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ModuleUI;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/ManualHal3ModuleUI;Lcom/android/camera/ui/CountDownView;)Lcom/android/camera/ui/CountDownView;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ModuleUI;
    .param p1, "x1"    # Lcom/android/camera/ui/CountDownView;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/ManualHal3ModuleUI;)Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3ModuleUI;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    return-object v0
.end method

.method private addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V
    .locals 3
    .param p1, "layout"    # Lcom/android/camera/ui/RotateLayout;

    .prologue
    const/4 v2, 0x1

    .line 284
    iget v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mOrientation:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    .line 285
    const/16 v0, 0x10e

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 291
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualModeRotateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    return-void

    .line 286
    :cond_0
    iget v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    .line 287
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_0

    .line 289
    :cond_1
    iget v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mOrientation:I

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    goto :goto_0
.end method

.method private expandOrFoldAwbOption(Z)V
    .locals 4
    .param p1, "forceFold"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 309
    iget-object v3, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualAwbOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 310
    .local v1, "visible":I
    :goto_0
    if-eqz p1, :cond_0

    const/16 v1, 0x8

    .line 311
    :cond_0
    if-nez v1, :cond_1

    iget v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualOptionBackgroundColor:I

    .line 312
    .local v0, "backgroundColor":I
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualAwbLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 313
    iget-object v3, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualAwbOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    iget-object v3, p0, Lcom/android/camera/ManualHal3ModuleUI;->mAwbLeftIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    iget-object v3, p0, Lcom/android/camera/ManualHal3ModuleUI;->mAwbRightIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    iget-object v3, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualAwbScroll:Lcom/android/camera/ui/ManualModeHorizontalScrollView;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->setVisibility(I)V

    .line 317
    if-ne v1, v2, :cond_2

    .line 318
    iget-object v2, p0, Lcom/android/camera/ManualHal3ModuleUI;->mAwbLeftIndicator:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    :cond_2
    return-void

    .end local v0    # "backgroundColor":I
    .end local v1    # "visible":I
    :cond_3
    move v1, v0

    .line 309
    goto :goto_0
.end method

.method private expandOrFoldEvOption(Z)V
    .locals 4
    .param p1, "forceFold"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 295
    iget-object v3, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualEvOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 296
    .local v1, "visible":I
    :goto_0
    if-eqz p1, :cond_0

    const/16 v1, 0x8

    .line 297
    :cond_0
    if-nez v1, :cond_1

    iget v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualOptionBackgroundColor:I

    .line 298
    .local v0, "backgroundColor":I
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualEvLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 299
    iget-object v3, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualEvOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 300
    iget-object v3, p0, Lcom/android/camera/ManualHal3ModuleUI;->mEvLeftIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    iget-object v3, p0, Lcom/android/camera/ManualHal3ModuleUI;->mEvRightIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object v3, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualEvScroll:Lcom/android/camera/ui/ManualModeHorizontalScrollView;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->setVisibility(I)V

    .line 303
    if-ne v1, v2, :cond_2

    .line 304
    iget-object v2, p0, Lcom/android/camera/ManualHal3ModuleUI;->mEvLeftIndicator:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    :cond_2
    return-void

    .end local v0    # "backgroundColor":I
    .end local v1    # "visible":I
    :cond_3
    move v1, v0

    .line 295
    goto :goto_0
.end method

.method private expandOrFoldMfOption(Z)V
    .locals 3
    .param p1, "forceFold"    # Z

    .prologue
    const/4 v0, 0x0

    .line 323
    iget-object v2, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualMfOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const/16 v1, 0x8

    .line 324
    .local v1, "visible":I
    :goto_0
    if-eqz p1, :cond_0

    const/16 v1, 0x8

    .line 325
    :cond_0
    if-nez v1, :cond_1

    iget v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualOptionBackgroundColor:I

    .line 326
    .local v0, "backgroundColor":I
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualMfLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 327
    iget-object v2, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualMfOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 329
    return-void

    .end local v0    # "backgroundColor":I
    .end local v1    # "visible":I
    :cond_2
    move v1, v0

    .line 323
    goto :goto_0
.end method

.method private inflateMenuModeOptions(Ljava/util/ArrayList;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p2, "optionRootView"    # Landroid/widget/LinearLayout;
    .param p3, "rootView"    # Landroid/widget/LinearLayout;
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
            "Landroid/widget/LinearLayout;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 502
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_4

    .line 503
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int v1, v9, v10

    .line 504
    .local v1, "diff":I
    if-lez v1, :cond_0

    .line 505
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v3, v9, :cond_1

    .line 506
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 505
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 508
    .end local v3    # "i":I
    :cond_0
    if-gez v1, :cond_1

    .line 509
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 510
    iget-object v9, p0, Lcom/android/camera/ManualHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 511
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f04004e

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 512
    .local v7, "layout":Landroid/view/View;
    invoke-virtual {p2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 513
    const v9, 0x7f0f0156

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v9}, Lcom/android/camera/ManualHal3ModuleUI;->addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 509
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 516
    .end local v3    # "i":I
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .end local v7    # "layout":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 517
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 518
    .restart local v7    # "layout":Landroid/view/View;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 519
    const v9, 0x7f0f0157

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 520
    .local v2, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 521
    const v9, 0x7f020273

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 525
    :goto_3
    const v9, 0x7f0f0158

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 526
    .local v4, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    sget-object v10, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->NORMAL:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    invoke-virtual {v9, v10}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getIcon(Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 527
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    const v9, 0x7f0f0159

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 530
    .local v8, "tv":Landroid/widget/TextView;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v9}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 534
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    new-instance v9, Lcom/android/camera/ManualHal3ModuleUI$ManualOptionsClickHandler;

    move-object/from16 v0, p4

    invoke-direct {v9, p0, v0}, Lcom/android/camera/ManualHal3ModuleUI$ManualOptionsClickHandler;-><init>(Lcom/android/camera/ManualHal3ModuleUI;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 523
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 537
    .end local v2    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v7    # "layout":Landroid/view/View;
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 538
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 539
    const/4 v6, 0x1

    .line 545
    .end local v1    # "diff":I
    .end local v3    # "i":I
    .local v6, "isSuccess":Z
    :goto_4
    return v6

    .line 541
    .end local v6    # "isSuccess":Z
    :cond_4
    const/16 v9, 0x8

    invoke-virtual {p3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 542
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 543
    const/4 v6, 0x0

    .restart local v6    # "isSuccess":Z
    goto :goto_4
.end method

.method private initManualModeAwbLayout()V
    .locals 4

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0138

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualAwbLayout:Landroid/widget/LinearLayout;

    .line 269
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualAwbIcon:Landroid/widget/ImageView;

    .line 270
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualAwbTv:Landroid/widget/TextView;

    .line 271
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualAwbOptions:Landroid/widget/LinearLayout;

    .line 272
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualAwbCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    .line 273
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualAwbCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f013d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ManualModeHorizontalScrollView;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualAwbScroll:Lcom/android/camera/ui/ManualModeHorizontalScrollView;

    .line 275
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mAwbLeftIndicator:Landroid/widget/ImageView;

    .line 276
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mAwbLeftIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020276

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mAwbRightIndicator:Landroid/widget/ImageView;

    .line 278
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mAwbRightIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020275

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 279
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualAwbScroll:Lcom/android/camera/ui/ManualModeHorizontalScrollView;

    new-instance v1, Lcom/android/camera/ManualHal3ModuleUI$ManualOptionsScrollHanlder;

    iget-object v2, p0, Lcom/android/camera/ManualHal3ModuleUI;->mAwbLeftIndicator:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/camera/ManualHal3ModuleUI;->mAwbRightIndicator:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/ManualHal3ModuleUI$ManualOptionsScrollHanlder;-><init>(Lcom/android/camera/ManualHal3ModuleUI;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->setOnEdgeReachedListener(Lcom/android/camera/ui/ManualModeHorizontalScrollView$OnEdgeReachedListener;)V

    .line 280
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualAwbCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/ManualHal3ModuleUI;->addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 281
    return-void
.end method

.method private initManualModeAwbOptions(Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 8
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;

    .prologue
    const/16 v1, 0x8

    .line 431
    if-nez p1, :cond_1

    .line 432
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualAwbLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualAwbLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v7

    .line 438
    .local v7, "supportedWhiteBalanceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 439
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualAwbLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualAwbLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_0

    .line 443
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0, p1}, Lcom/android/camera/ManualDataUtil;->getWhiteBalance(Landroid/content/Context;Lcom/android/camera/one/OneCameraCharacteristics;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mWBItemLists:Ljava/util/ArrayList;

    .line 444
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_whitebalance_mode_key"

    iget-object v3, p0, Lcom/android/camera/ManualHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0803d7

    .line 445
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 444
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 446
    .local v5, "currentValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mWBItemLists:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualAwbOptions:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualAwbLayout:Landroid/widget/LinearLayout;

    const-string v4, "pref_camera_whitebalance_mode_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ManualHal3ModuleUI;->inflateMenuModeOptions(Ljava/util/ArrayList;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 447
    .local v6, "success":Z
    if-eqz v6, :cond_0

    const-string v0, "pref_camera_whitebalance_mode_key"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/ManualHal3ModuleUI;->updateManualContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initManualModeEvLayout()V
    .locals 4

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0149

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualEvLayout:Landroid/widget/LinearLayout;

    .line 241
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualEvIcon:Landroid/widget/ImageView;

    .line 242
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualEvIcon:Landroid/widget/ImageView;

    const v1, 0x7f020120

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f014c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualEvTv:Landroid/widget/TextView;

    .line 244
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f014f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualEvOptions:Landroid/widget/LinearLayout;

    .line 245
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f014a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    .line 246
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f014e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ManualModeHorizontalScrollView;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualEvScroll:Lcom/android/camera/ui/ManualModeHorizontalScrollView;

    .line 248
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f014d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mEvLeftIndicator:Landroid/widget/ImageView;

    .line 249
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mEvLeftIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020276

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0150

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mEvRightIndicator:Landroid/widget/ImageView;

    .line 251
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mEvRightIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020275

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualEvScroll:Lcom/android/camera/ui/ManualModeHorizontalScrollView;

    new-instance v1, Lcom/android/camera/ManualHal3ModuleUI$ManualOptionsScrollHanlder;

    iget-object v2, p0, Lcom/android/camera/ManualHal3ModuleUI;->mEvLeftIndicator:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/camera/ManualHal3ModuleUI;->mEvRightIndicator:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/ManualHal3ModuleUI$ManualOptionsScrollHanlder;-><init>(Lcom/android/camera/ManualHal3ModuleUI;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ManualModeHorizontalScrollView;->setOnEdgeReachedListener(Lcom/android/camera/ui/ManualModeHorizontalScrollView$OnEdgeReachedListener;)V

    .line 253
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualEvCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/ManualHal3ModuleUI;->addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 254
    return-void
.end method

.method private initManualModeEvOptions(Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 9
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;

    .prologue
    const/16 v1, 0x8

    .line 387
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->isExposureCompensationSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualEvLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualEvLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 406
    :cond_1
    :goto_0
    return-void

    .line 393
    :cond_2
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getMaxExposureCompensation()I

    move-result v6

    .line 394
    .local v6, "max":I
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getMinExposureCompensation()I

    move-result v7

    .line 395
    .local v7, "min":I
    if-nez v6, :cond_3

    if-nez v7, :cond_3

    .line 396
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualEvLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualEvLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_0

    .line 401
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0, p1}, Lcom/android/camera/ManualDataUtil;->getExposureCompensationItems(Landroid/content/Context;Lcom/android/camera/one/OneCameraCharacteristics;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mEVItemLists:Ljava/util/ArrayList;

    .line 402
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_manual_exposure_key"

    iget-object v3, p0, Lcom/android/camera/ManualHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f080402

    .line 403
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 402
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 404
    .local v5, "currentValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mEVItemLists:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualEvOptions:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualEvLayout:Landroid/widget/LinearLayout;

    const-string v4, "pref_camera_manual_exposure_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ManualHal3ModuleUI;->inflateMenuModeOptions(Ljava/util/ArrayList;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 405
    .local v8, "success":Z
    if-eqz v8, :cond_1

    const-string v0, "pref_camera_manual_exposure_key"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/ManualHal3ModuleUI;->updateManualContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initManualModeFocusLayout()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0151

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualMfLayout:Landroid/widget/LinearLayout;

    .line 258
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualMfIcon:Landroid/widget/ImageView;

    .line 259
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0154

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualMfTv:Landroid/widget/TextView;

    .line 260
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0155

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualMfOptions:Landroid/widget/LinearLayout;

    .line 261
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0152

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    .line 262
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mMfGap:Landroid/view/View;

    .line 264
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualMfCurrentItemLayout:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/ManualHal3ModuleUI;->addManualModeRotateItem(Lcom/android/camera/ui/RotateLayout;)V

    .line 265
    return-void
.end method

.method private initManualModeFocusOptions(Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 8
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;

    .prologue
    const/16 v2, 0x8

    .line 409
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getMinimumFocusDistance()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualMfLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualMfLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 428
    :cond_1
    :goto_0
    return-void

    .line 416
    :cond_2
    invoke-interface {p1}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedFocusMode()Ljava/util/List;

    move-result-object v7

    .line 417
    .local v7, "supportedFocusModeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 418
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualMfLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualMfLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_0

    .line 423
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/camera/ManualDataUtil;->getFocusModes(Landroid/content/Context;Lcom/android/camera/one/OneCameraCharacteristics;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mMFItemLists:Ljava/util/ArrayList;

    .line 424
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_manual_focus_mode"

    iget-object v3, p0, Lcom/android/camera/ManualHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f080406

    .line 425
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 424
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 426
    .local v5, "currentValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mMFItemLists:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualMfOptions:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualMfLayout:Landroid/widget/LinearLayout;

    const-string v4, "pref_camera_manual_focus_mode"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ManualHal3ModuleUI;->inflateMenuModeOptions(Ljava/util/ArrayList;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 427
    .local v6, "success":Z
    if-eqz v6, :cond_1

    const-string v0, "pref_camera_manual_focus_mode"

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/ManualHal3ModuleUI;->updateManualContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initManualModeLayout()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0f015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualModeRootView:Landroid/widget/LinearLayout;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualModeRotateList:Ljava/util/List;

    .line 232
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0e0083

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualOptionBackgroundColor:I

    .line 234
    invoke-direct {p0}, Lcom/android/camera/ManualHal3ModuleUI;->initManualModeEvLayout()V

    .line 235
    invoke-direct {p0}, Lcom/android/camera/ManualHal3ModuleUI;->initManualModeFocusLayout()V

    .line 236
    invoke-direct {p0}, Lcom/android/camera/ManualHal3ModuleUI;->initManualModeAwbLayout()V

    .line 237
    return-void
.end method

.method private initializeManualModeOptions(Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 0
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/android/camera/ManualHal3ModuleUI;->initManualModeEvOptions(Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 382
    invoke-direct {p0, p1}, Lcom/android/camera/ManualHal3ModuleUI;->initManualModeFocusOptions(Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 383
    invoke-direct {p0, p1}, Lcom/android/camera/ManualHal3ModuleUI;->initManualModeAwbOptions(Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 384
    return-void
.end method


# virtual methods
.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 608
    :cond_0
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 650
    :cond_0
    return-void
.end method

.method public foldAllOptions()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 333
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mInitializeFirstTime:Z

    if-nez v0, :cond_0

    .line 334
    sget-object v0, Lcom/android/camera/ManualHal3ModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "foldAllOptions() mInitializeFirstTime is false."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 346
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mIsLayoutInflated:Z

    if-nez v0, :cond_1

    .line 339
    sget-object v0, Lcom/android/camera/ManualHal3ModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "foldAllOptions() mIsLayoutInflated is false."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/camera/ManualHal3ModuleUI;->expandOrFoldEvOption(Z)V

    .line 344
    invoke-direct {p0, v1}, Lcom/android/camera/ManualHal3ModuleUI;->expandOrFoldMfOption(Z)V

    .line 345
    invoke-direct {p0, v1}, Lcom/android/camera/ManualHal3ModuleUI;->expandOrFoldAwbOption(Z)V

    goto :goto_0
.end method

.method public getBitMapFromPreview()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 611
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 612
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0, v5}, Lcom/android/camera/ManualHal3ModuleUI;->getPreviewTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    .line 613
    iget-object v2, p0, Lcom/android/camera/ManualHal3ModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 614
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

.method public getEditSingleRing()Z
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public getEditableMode()Z
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public getFaceView()Lcom/android/camera/ui/FaceView;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    return-object v0
.end method

.method public getPreviewAreaHeight()I
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

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
    .line 552
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

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
    .line 563
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mPreviewView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public initializeZoom(FF)V
    .locals 3
    .param p1, "maxZoom"    # F
    .param p2, "currentZoom"    # F

    .prologue
    .line 625
    iput p1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mMaxZoom:F

    .line 626
    iput p2, p0, Lcom/android/camera/ManualHal3ModuleUI;->mZoomValue:F

    .line 627
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/camera/face/Camera2FaceConverter;->setZoomValue(F)V

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mPreviewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    iget v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mMaxZoom:F

    iget-object v2, p0, Lcom/android/camera/ManualHal3ModuleUI;->mZoomChangedListener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/camera/ui/PreviewOverlay;->setupZoom(FFLcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    .line 631
    return-void
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CountDownView;->isCountingDown()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadModuleLayout(Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 4
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;

    .prologue
    .line 190
    sget-object v1, Lcom/android/camera/ManualHal3ModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "loadModuleLayout()"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mPause:Z

    .line 192
    iget-boolean v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mInitializeFirstTime:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mIsLayoutInflated:Z

    if-eqz v1, :cond_0

    .line 193
    sget-object v1, Lcom/android/camera/ManualHal3ModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "initializeManualModeOptions() start"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0, p1}, Lcom/android/camera/ManualHal3ModuleUI;->initializeManualModeOptions(Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 195
    sget-object v1, Lcom/android/camera/ManualHal3ModuleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "initializeManualModeOptions() end"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 199
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mInitializeFirstTime:Z

    .line 200
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/support/v4/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 201
    .local v0, "asyncLayoutInflater":Landroid/support/v4/view/AsyncLayoutInflater;
    const v2, 0x7f040052

    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mModuleRoot:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/camera/ManualHal3ModuleUI$2;

    invoke-direct {v3, p0, p1}, Lcom/android/camera/ManualHal3ModuleUI$2;-><init>(Lcom/android/camera/ManualHal3ModuleUI;Lcom/android/camera/one/OneCameraCharacteristics;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    goto :goto_0
.end method

.method public onFaceDetection([Landroid/hardware/camera2/params/Face;)V
    .locals 2
    .param p1, "faceList"    # [Landroid/hardware/camera2/params/Face;

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    if-nez v0, :cond_1

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    invoke-virtual {v1, p1}, Lcom/android/camera/face/Camera2FaceConverter;->convertCamera2Face([Landroid/hardware/camera2/params/Face;)[Lcom/android/camera/face/FaceData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera/face/FaceData;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 670
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mPause:Z

    .line 671
    return-void
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mPreviewArea:Landroid/graphics/RectF;

    .line 706
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 712
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
    .line 675
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 677
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 679
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 680
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 681
    new-instance v0, Lcom/android/camera/face/Camera2FaceConverter;

    iget v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mZoomValue:F

    invoke-direct {v0, p3, p2, v1, p4}, Lcom/android/camera/face/Camera2FaceConverter;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;ZFLcom/android/camera/util/Size;)V

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 683
    :cond_0
    return-void
.end method

.method public onStopFaceDetection()V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 689
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 691
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mConverter:Lcom/android/camera/face/Camera2FaceConverter;

    .line 693
    :cond_0
    return-void
.end method

.method public pauseFaceDetection()V
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 664
    :cond_0
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 657
    :cond_0
    return-void
.end method

.method public setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .line 591
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 592
    :cond_0
    return-void
.end method

.method public setEditableMode(ZZ)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "animateOnly"    # Z

    .prologue
    .line 350
    return-void
.end method

.method public setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/ui/FaceView$OnFaceChangedListener;

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 643
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 716
    iput p1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mOrientation:I

    .line 717
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualModeRotateList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 718
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualModeRotateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 719
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualModeRotateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 718
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 723
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ManualHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 724
    :cond_1
    return-void
.end method

.method public setViewVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualModeRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 728
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualEvLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualEvLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualAwbLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualAwbLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualMfLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualMfLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 731
    :cond_2
    return-void
.end method

.method public startCountdown(I)V
    .locals 1
    .param p1, "sec"    # I

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mCountdownView:Lcom/android/camera/ui/CountDownView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CountDownView;->startCountDown(I)V

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI;->mOnCountDownStatusListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    invoke-interface {v0}, Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;->onCountDownFinished()V

    goto :goto_0
.end method

.method public updateManualContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 456
    const/4 v4, 0x0

    .line 457
    .local v4, "text":Ljava/lang/String;
    const/4 v3, -0x1

    .line 458
    .local v3, "icon_not_exist":I
    const/4 v2, -0x1

    .line 460
    .local v2, "icon":I
    const-string v5, "pref_camera_manual_exposure_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 461
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/camera/ManualHal3ModuleUI;->mEVItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 462
    iget-object v5, p0, Lcom/android/camera/ManualHal3ModuleUI;->mEVItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v5}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 463
    iget-object v5, p0, Lcom/android/camera/ManualHal3ModuleUI;->mEVItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    .line 464
    .local v0, "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    invoke-virtual {v0}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v4

    .line 468
    .end local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    :cond_0
    iget-object v5, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualEvTv:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 461
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    .end local v1    # "i":I
    :cond_3
    const-string v5, "pref_camera_manual_focus_mode"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 470
    iget-object v5, p0, Lcom/android/camera/ManualHal3ModuleUI;->mMFItemLists:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 471
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/camera/ManualHal3ModuleUI;->mMFItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 472
    iget-object v5, p0, Lcom/android/camera/ManualHal3ModuleUI;->mMFItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v5}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 473
    iget-object v5, p0, Lcom/android/camera/ManualHal3ModuleUI;->mMFItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    .line 474
    .restart local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    invoke-virtual {v0}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v4

    .line 475
    sget-object v5, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->NORMAL:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    invoke-virtual {v0, v5}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getIcon(Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;)I

    move-result v2

    .line 479
    .end local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    :cond_4
    iget-object v5, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualMfTv:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    if-eq v2, v6, :cond_1

    .line 481
    iget-object v5, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualMfIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 471
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 484
    .end local v1    # "i":I
    :cond_6
    const-string v5, "pref_camera_whitebalance_mode_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 485
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/android/camera/ManualHal3ModuleUI;->mWBItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 486
    iget-object v5, p0, Lcom/android/camera/ManualHal3ModuleUI;->mWBItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    invoke-virtual {v5}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 487
    iget-object v5, p0, Lcom/android/camera/ManualHal3ModuleUI;->mWBItemLists:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;

    .line 488
    .restart local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    sget-object v5, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->NORMAL:Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    invoke-virtual {v0, v5}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getIcon(Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;)I

    move-result v2

    .line 489
    invoke-virtual {v0}, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->getData()Ljava/lang/String;

    move-result-object v4

    .line 493
    .end local v0    # "data":Lcom/android/camera/ManualDataUtil$ManualModeItemData;
    :cond_7
    if-eqz v4, :cond_8

    iget-object v5, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualAwbTv:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    :cond_8
    if-eq v2, v6, :cond_1

    iget-object v5, p0, Lcom/android/camera/ManualHal3ModuleUI;->mManualAwbIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 485
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public updateManualContentUI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 452
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ManualHal3ModuleUI;->updateManualContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    return-void
.end method
