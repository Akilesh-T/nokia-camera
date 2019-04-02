.class Lcom/android/camera/app/FilmstripBottomPanel;
.super Ljava/lang/Object;
.source "FilmstripBottomPanel.java"

# interfaces
.implements Lcom/android/camera/app/CameraAppUI$BottomPanel;


# static fields
.field private static final ANIM_DURATION:I = 0x96


# instance fields
.field private final mControlLayout:Landroid/view/View;

.field private final mController:Lcom/android/camera/app/AppController;

.field private mDeleteButton:Landroid/widget/ImageButton;

.field private mEditButton:Landroid/widget/ImageButton;

.field private final mLayout:Landroid/view/ViewGroup;

.field private mListener:Lcom/android/camera/app/CameraAppUI$BottomPanel$Listener;

.field private final mMiddleFiller:Landroid/view/View;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressErrorImg:Landroid/widget/ImageView;

.field private mProgressErrorLayout:Landroid/view/View;

.field private mProgressErrorText:Landroid/widget/TextView;

.field private mProgressLayout:Landroid/view/View;

.field private mProgressText:Landroid/widget/TextView;

.field private mShareButton:Landroid/widget/ImageButton;

.field private mTinyPlanetEnabled:Z

.field private mViewButton:Lcom/android/camera/widget/ExternalViewerButton;


# direct methods
.method public constructor <init>(Lcom/android/camera/app/AppController;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/camera/app/AppController;
    .param p2, "bottomControlsLayout"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mController:Lcom/android/camera/app/AppController;

    .line 61
    iput-object p2, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mLayout:Landroid/view/ViewGroup;

    .line 62
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f0110

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mMiddleFiller:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f010d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mControlLayout:Landroid/view/View;

    .line 64
    invoke-direct {p0}, Lcom/android/camera/app/FilmstripBottomPanel;->setupEditButton()V

    .line 65
    invoke-direct {p0}, Lcom/android/camera/app/FilmstripBottomPanel;->setupViewButton()V

    .line 66
    invoke-direct {p0}, Lcom/android/camera/app/FilmstripBottomPanel;->setupDeleteButton()V

    .line 67
    invoke-direct {p0}, Lcom/android/camera/app/FilmstripBottomPanel;->setupShareButton()V

    .line 68
    invoke-direct {p0}, Lcom/android/camera/app/FilmstripBottomPanel;->setupProgressUi()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/app/FilmstripBottomPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/FilmstripBottomPanel;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mTinyPlanetEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/app/FilmstripBottomPanel;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/FilmstripBottomPanel;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mEditButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/app/FilmstripBottomPanel;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/FilmstripBottomPanel;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/app/FilmstripBottomPanel;)Lcom/android/camera/app/CameraAppUI$BottomPanel$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/FilmstripBottomPanel;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mListener:Lcom/android/camera/app/CameraAppUI$BottomPanel$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/app/FilmstripBottomPanel;)Lcom/android/camera/widget/ExternalViewerButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/FilmstripBottomPanel;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mViewButton:Lcom/android/camera/widget/ExternalViewerButton;

    return-object v0
.end method

.method private setupDeleteButton()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f0112

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mDeleteButton:Landroid/widget/ImageButton;

    .line 224
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mDeleteButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/camera/app/FilmstripBottomPanel$3;

    invoke-direct {v1, p0}, Lcom/android/camera/app/FilmstripBottomPanel$3;-><init>(Lcom/android/camera/app/FilmstripBottomPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mDeleteButton:Landroid/widget/ImageButton;

    const v1, 0x7f0201c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 233
    return-void
.end method

.method private setupEditButton()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f0111

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mEditButton:Landroid/widget/ImageButton;

    .line 193
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mEditButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/camera/app/FilmstripBottomPanel$1;

    invoke-direct {v1, p0}, Lcom/android/camera/app/FilmstripBottomPanel$1;-><init>(Lcom/android/camera/app/FilmstripBottomPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mEditButton:Landroid/widget/ImageButton;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->registerForContextMenu(Landroid/view/View;)V

    .line 204
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mEditButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLongClickable(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mEditButton:Landroid/widget/ImageButton;

    const v1, 0x7f0201c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 206
    return-void
.end method

.method private setupProgressUi()V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f0116

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mProgressLayout:Landroid/view/View;

    .line 250
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f0117

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mProgressText:Landroid/widget/TextView;

    .line 251
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f0118

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mProgressBar:Landroid/widget/ProgressBar;

    .line 252
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020084

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 254
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mProgressLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f0115

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mProgressErrorText:Landroid/widget/TextView;

    .line 256
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f0114

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mProgressErrorImg:Landroid/widget/ImageView;

    .line 257
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mProgressErrorImg:Landroid/widget/ImageView;

    const v1, 0x7f020183

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f0113

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mProgressErrorLayout:Landroid/view/View;

    .line 259
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mProgressErrorLayout:Landroid/view/View;

    new-instance v1, Lcom/android/camera/app/FilmstripBottomPanel$5;

    invoke-direct {v1, p0}, Lcom/android/camera/app/FilmstripBottomPanel$5;-><init>(Lcom/android/camera/app/FilmstripBottomPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    return-void
.end method

.method private setupShareButton()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f010e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mShareButton:Landroid/widget/ImageButton;

    .line 237
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mShareButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/camera/app/FilmstripBottomPanel$4;

    invoke-direct {v1, p0}, Lcom/android/camera/app/FilmstripBottomPanel$4;-><init>(Lcom/android/camera/app/FilmstripBottomPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mShareButton:Landroid/widget/ImageButton;

    const v1, 0x7f02020a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 246
    return-void
.end method

.method private setupViewButton()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f010f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/ExternalViewerButton;

    iput-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mViewButton:Lcom/android/camera/widget/ExternalViewerButton;

    .line 211
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mViewButton:Lcom/android/camera/widget/ExternalViewerButton;

    new-instance v1, Lcom/android/camera/app/FilmstripBottomPanel$2;

    invoke-direct {v1, p0}, Lcom/android/camera/app/FilmstripBottomPanel$2;-><init>(Lcom/android/camera/app/FilmstripBottomPanel;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ExternalViewerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mViewButton:Lcom/android/camera/widget/ExternalViewerButton;

    const v1, 0x7f02023f

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ExternalViewerButton;->setImageResource(I)V

    .line 220
    return-void
.end method

.method private updateMiddleFillerLayoutVisibility()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mEditButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mViewButton:Lcom/android/camera/widget/ExternalViewerButton;

    .line 276
    invoke-virtual {v0}, Lcom/android/camera/widget/ExternalViewerButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mMiddleFiller:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mMiddleFiller:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clearClingForViewer(I)V
    .locals 1
    .param p1, "viewerType"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mViewButton:Lcom/android/camera/widget/ExternalViewerButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ExternalViewerButton;->clearClingForViewer(I)V

    .line 84
    return-void
.end method

.method public getClingForViewer(I)Lcom/android/camera/widget/Cling;
    .locals 1
    .param p1, "viewerType"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mViewButton:Lcom/android/camera/widget/ExternalViewerButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ExternalViewerButton;->getClingForViewer(I)Lcom/android/camera/widget/Cling;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 7

    .prologue
    .line 299
    iget-object v2, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 300
    .local v1, "offset":I
    iget-object v2, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    int-to-float v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mLayout:Landroid/view/ViewGroup;

    const-string v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mLayout:Landroid/view/ViewGroup;

    .line 302
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x1

    int-to-float v6, v1

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 303
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 304
    sget-object v2, Lcom/android/camera/util/Gusterpolator;->INSTANCE:Lcom/android/camera/util/Gusterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 305
    iget-object v2, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mViewButton:Lcom/android/camera/widget/ExternalViewerButton;

    invoke-virtual {v2}, Lcom/android/camera/widget/ExternalViewerButton;->hideClings()V

    .line 306
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 308
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method public hideControls()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mControlLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    return-void
.end method

.method public hideProgress()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mProgressLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    return-void
.end method

.method public hideProgressError()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mProgressErrorLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    return-void
.end method

.method public setClingForViewer(ILcom/android/camera/widget/Cling;)V
    .locals 1
    .param p1, "viewerType"    # I
    .param p2, "cling"    # Lcom/android/camera/widget/Cling;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mViewButton:Lcom/android/camera/widget/ExternalViewerButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/widget/ExternalViewerButton;->setClingForViewer(ILcom/android/camera/widget/Cling;)V

    .line 79
    return-void
.end method

.method public setDeleteButtonVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mDeleteButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 130
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setDeleteEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 135
    return-void
.end method

.method public setEditButtonVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mEditButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 103
    invoke-direct {p0}, Lcom/android/camera/app/FilmstripBottomPanel;->updateMiddleFillerLayoutVisibility()V

    .line 104
    return-void

    .line 102
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setEditEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mEditButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 109
    return-void
.end method

.method public setListener(Lcom/android/camera/app/CameraAppUI$BottomPanel$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/app/CameraAppUI$BottomPanel$Listener;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mListener:Lcom/android/camera/app/CameraAppUI$BottomPanel$Listener;

    .line 74
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 155
    return-void
.end method

.method public setProgressText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method public setShareButtonVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mShareButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 140
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setShareEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mShareButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 145
    return-void
.end method

.method public setTinyPlanetEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mTinyPlanetEnabled:Z

    .line 125
    return-void
.end method

.method public setViewEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mViewButton:Lcom/android/camera/widget/ExternalViewerButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ExternalViewerButton;->setEnabled(Z)V

    .line 120
    return-void
.end method

.method public setViewerButtonVisibility(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mViewButton:Lcom/android/camera/widget/ExternalViewerButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ExternalViewerButton;->setState(I)V

    .line 114
    invoke-direct {p0}, Lcom/android/camera/app/FilmstripBottomPanel;->updateMiddleFillerLayoutVisibility()V

    .line 115
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 6

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mLayout:Landroid/view/ViewGroup;

    const-string v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mLayout:Landroid/view/ViewGroup;

    .line 285
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 286
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 287
    sget-object v1, Lcom/android/camera/util/Gusterpolator;->INSTANCE:Lcom/android/camera/util/Gusterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 288
    new-instance v1, Lcom/android/camera/app/FilmstripBottomPanel$6;

    invoke-direct {v1, p0}, Lcom/android/camera/app/FilmstripBottomPanel$6;-><init>(Lcom/android/camera/app/FilmstripBottomPanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 294
    iget-object v1, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mViewButton:Lcom/android/camera/widget/ExternalViewerButton;

    invoke-virtual {v1}, Lcom/android/camera/widget/ExternalViewerButton;->hideClings()V

    .line 295
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 296
    return-void
.end method

.method public showControls()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mControlLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    return-void
.end method

.method public showProgress()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mProgressLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    invoke-virtual {p0}, Lcom/android/camera/app/FilmstripBottomPanel;->hideProgressError()V

    .line 174
    return-void
.end method

.method public showProgressError(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/camera/app/FilmstripBottomPanel;->hideControls()V

    .line 160
    invoke-virtual {p0}, Lcom/android/camera/app/FilmstripBottomPanel;->hideProgress()V

    .line 161
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mProgressErrorLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/android/camera/app/FilmstripBottomPanel;->mProgressErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method
