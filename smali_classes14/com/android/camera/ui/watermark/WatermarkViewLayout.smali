.class public Lcom/android/camera/ui/watermark/WatermarkViewLayout;
.super Landroid/widget/RelativeLayout;
.source "WatermarkViewLayout.java"


# static fields
.field public static final DEGREE_TYPE_O:Ljava/lang/String; = "\u00b0"

.field private static final MAX_FREE_TEXT_LINE:I = 0x3

.field private static final MAX_LOCATION_LINE:I = 0x1

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mCameraActivity:Lcom/android/camera/CameraActivity;

.field private mEditDialog:Landroid/app/AlertDialog;

.field private mEditView:Landroid/view/View;

.field private mFreeTextContainer:Landroid/widget/LinearLayout;

.field private mFreeTextView:Landroid/widget/TextView;

.field private mIsFrontFacing:Z

.field private mLatitude:D

.field private mLocationTextContainer:Landroid/widget/LinearLayout;

.field private mLocationTextView:Landroid/widget/TextView;

.field private mLogoImageView:Landroid/widget/ImageView;

.field private mLongitude:D

.field private final mTextWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Watermark.ViewLayout"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mIsFrontFacing:Z

    .line 55
    check-cast p1, Lcom/android/camera/CameraActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mCameraActivity:Lcom/android/camera/CameraActivity;

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mTextWidth:I

    .line 57
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLatitude:D

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLongitude:D

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mCameraActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->showEditAlertDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mFreeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    .prologue
    .line 33
    iget v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mTextWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLocationTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private initDialogView(Landroid/widget/EditText;)V
    .locals 2
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 334
    invoke-virtual {p1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 335
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mTextWidth:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 336
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 337
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mTextWidth:I

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setWidth(I)V

    .line 339
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mFreeTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mFreeTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 341
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLocationTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 344
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    goto :goto_0
.end method

.method private showEditAlertDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 249
    sget-object v5, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showEditAlertDialog => "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mEditDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 250
    iget-object v5, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mEditDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    .line 251
    iget-object v5, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mEditDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 252
    iput-object v8, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mEditDialog:Landroid/app/AlertDialog;

    .line 255
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 256
    .local v1, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 257
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0400a3

    invoke-virtual {v3, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 258
    .local v4, "layout":Landroid/view/View;
    const v5, 0x7f0f0242

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 259
    .local v2, "editText":Landroid/widget/EditText;
    const v5, 0x7f0f0243

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 260
    .local v0, "countText":Landroid/widget/TextView;
    invoke-direct {p0, v2}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->initDialogView(Landroid/widget/EditText;)V

    .line 261
    new-instance v5, Lcom/android/camera/ui/watermark/WatermarkViewLayout$4;

    invoke-direct {v5, p0, v2, v0}, Lcom/android/camera/ui/watermark/WatermarkViewLayout$4;-><init>(Lcom/android/camera/ui/watermark/WatermarkViewLayout;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 300
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 302
    iget-object v5, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mFreeTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 303
    const v5, 0x7f08029b

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 307
    :cond_1
    :goto_0
    const v5, 0x7f08029a

    new-instance v6, Lcom/android/camera/ui/watermark/WatermarkViewLayout$5;

    invoke-direct {v6, p0, v2}, Lcom/android/camera/ui/watermark/WatermarkViewLayout$5;-><init>(Lcom/android/camera/ui/watermark/WatermarkViewLayout;Landroid/widget/EditText;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 318
    const v5, 0x7f080298

    new-instance v6, Lcom/android/camera/ui/watermark/WatermarkViewLayout$6;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/watermark/WatermarkViewLayout$6;-><init>(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 324
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 325
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mEditDialog:Landroid/app/AlertDialog;

    .line 326
    iget-object v5, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mCameraActivity:Lcom/android/camera/CameraActivity;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mEditDialog:Landroid/app/AlertDialog;

    .line 327
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 328
    iget-object v5, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mEditDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x80000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 330
    :cond_2
    iget-object v5, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mEditDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 331
    return-void

    .line 304
    :cond_3
    iget-object v5, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLocationTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 305
    const v5, 0x7f08029c

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLocationTextContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mFreeTextContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020317

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLocationTextContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLocationTextContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 116
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mFreeTextContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mFreeTextContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLocationTextContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mFreeTextContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLocationTextContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLocationTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mFreeTextContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mFreeTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateLocationInfo(Lcom/android/camera/watermark/WatermarkInfoData;)V
    .locals 6
    .param p1, "watermarkInfoData"    # Lcom/android/camera/watermark/WatermarkInfoData;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 202
    sget-boolean v2, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Watermark;->ENABLE_TENCENT_POI:Z

    if-eqz v2, :cond_0

    .line 203
    const v2, 0x7f0f023d

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 204
    .local v0, "editLocation":Landroid/widget/ImageView;
    if-nez v0, :cond_1

    .line 222
    .end local v0    # "editLocation":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 207
    .restart local v0    # "editLocation":Landroid/widget/ImageView;
    :cond_1
    iget-object v2, p1, Lcom/android/camera/watermark/WatermarkInfoData;->mLocation:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 212
    :cond_2
    iget-object v2, p1, Lcom/android/camera/watermark/WatermarkInfoData;->mLocation:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "locations":[Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 214
    :cond_3
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 218
    :cond_4
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLatitude:D

    .line 219
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLongitude:D

    .line 220
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateWeatherInfo(Lcom/android/camera/watermark/WatermarkInfoData;)V
    .locals 2
    .param p1, "watermarkInfoData"    # Lcom/android/camera/watermark/WatermarkInfoData;

    .prologue
    .line 196
    const v1, 0x7f0f0233

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 197
    .local v0, "weatherIcon":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    iget v1, p1, Lcom/android/camera/watermark/WatermarkInfoData;->mWeatherIconId:I

    if-eqz v1, :cond_0

    .line 198
    iget v1, p1, Lcom/android/camera/watermark/WatermarkInfoData;->mWeatherIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 61
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 62
    sget-object v3, Lcom/android/camera/product_utils/ProductUtil;->BUILD_NICKNAME:Ljava/lang/String;

    .line 63
    .local v3, "nickName":Ljava/lang/String;
    const v4, 0x7f0f023d

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 64
    .local v1, "editLocation":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 65
    new-instance v4, Lcom/android/camera/ui/watermark/WatermarkViewLayout$1;

    invoke-direct {v4, p0}, Lcom/android/camera/ui/watermark/WatermarkViewLayout$1;-><init>(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    :cond_0
    const v4, 0x7f0f023c

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 75
    .local v2, "editText":Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    .line 76
    new-instance v4, Lcom/android/camera/ui/watermark/WatermarkViewLayout$2;

    invoke-direct {v4, p0}, Lcom/android/camera/ui/watermark/WatermarkViewLayout$2;-><init>(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_1
    const v4, 0x7f0f023e

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLogoImageView:Landroid/widget/ImageView;

    .line 85
    iget-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLogoImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 86
    iget-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLogoImageView:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mIsFrontFacing:Z

    invoke-static {v5, v3}, Lcom/android/camera/util/ProductModelUtil;->getBrandLogo(ZLjava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    :cond_2
    const v4, 0x7f0f023b

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mEditView:Landroid/view/View;

    .line 90
    const v4, 0x7f0f023a

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLocationTextView:Landroid/widget/TextView;

    .line 91
    const v4, 0x7f0f0240

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mFreeTextView:Landroid/widget/TextView;

    .line 92
    iget-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mFreeTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 93
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 94
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mFreeTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080450

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v3, v7, v11

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 96
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_3
    const v4, 0x7f0f0239

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLocationTextContainer:Landroid/widget/LinearLayout;

    .line 97
    const v4, 0x7f0f023f

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mFreeTextContainer:Landroid/widget/LinearLayout;

    .line 98
    return-void
.end method

.method public setCameraFacing(Z)V
    .locals 3
    .param p1, "isFrontFacing"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mIsFrontFacing:Z

    .line 226
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLogoImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 227
    sget-object v0, Lcom/android/camera/product_utils/ProductUtil;->BUILD_NICKNAME:Ljava/lang/String;

    .line 228
    .local v0, "nickName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLogoImageView:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mIsFrontFacing:Z

    invoke-static {v2, v0}, Lcom/android/camera/util/ProductModelUtil;->getBrandLogo(ZLjava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    .end local v0    # "nickName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setFreeTextInfoData(Lcom/android/camera/watermark/FreeTextInfoData;)V
    .locals 5
    .param p1, "freeTextInfoData"    # Lcom/android/camera/watermark/FreeTextInfoData;

    .prologue
    const/4 v4, -0x2

    .line 160
    if-nez p1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    sget-object v1, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFreeTextInfoData => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/camera/watermark/FreeTextInfoData;->dump()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mFreeTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/camera/watermark/FreeTextInfoData;->mFreeText:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mFreeTextView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/camera/watermark/FreeTextInfoData;->mFreeText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mFreeTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 166
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 167
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 168
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mFreeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mFreeTextView:Landroid/widget/TextView;

    new-instance v2, Lcom/android/camera/ui/watermark/WatermarkViewLayout$3;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/watermark/WatermarkViewLayout$3;-><init>(Lcom/android/camera/ui/watermark/WatermarkViewLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setLocationInfoData(Lcom/android/camera/watermark/LocationInfoData;)V
    .locals 3
    .param p1, "locationInfoData"    # Lcom/android/camera/watermark/LocationInfoData;

    .prologue
    .line 146
    if-nez p1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    sget-object v0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocationInfoData => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/watermark/LocationInfoData;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLocationTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p1, Lcom/android/camera/watermark/LocationInfoData;->mEditLocation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLocationTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/camera/watermark/LocationInfoData;->mEditLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p1, Lcom/android/camera/watermark/LocationInfoData;->mLocation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLocationTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/camera/watermark/LocationInfoData;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080114

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setWatermarkEditable(Z)V
    .locals 3
    .param p1, "editable"    # Z

    .prologue
    .line 233
    sget-object v0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWatermarkEditable => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mEditDialog => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mEditDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 234
    if-eqz p1, :cond_2

    .line 235
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mEditView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mEditView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->startAnimation()V

    .line 246
    :cond_1
    :goto_0
    return-void

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mEditView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mEditView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->stopAnimation()V

    .line 241
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mEditDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mEditDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->mEditDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public setWatermarkInfoData(Lcom/android/camera/watermark/WatermarkInfoData;)V
    .locals 3
    .param p1, "watermarkInfoData"    # Lcom/android/camera/watermark/WatermarkInfoData;

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 139
    :cond_0
    sget-object v0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWatermarkInfoData => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/watermark/WatermarkInfoData;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, p1}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->updateWeatherInfo(Lcom/android/camera/watermark/WatermarkInfoData;)V

    .line 142
    invoke-direct {p0, p1}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->updateLocationInfo(Lcom/android/camera/watermark/WatermarkInfoData;)V

    goto :goto_0
.end method
