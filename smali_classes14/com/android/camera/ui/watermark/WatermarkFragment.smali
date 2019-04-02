.class public Lcom/android/camera/ui/watermark/WatermarkFragment;
.super Landroid/support/v4/app/Fragment;
.source "WatermarkFragment.java"

# interfaces
.implements Lcom/android/camera/ui/watermark/WatermarkFragmentLayout$OnChildInfoUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/watermark/WatermarkFragment$OnEditActionListener;,
        Lcom/android/camera/ui/watermark/WatermarkFragment$OnFragmentActionListener;
    }
.end annotation


# static fields
.field private static final ARG_LAYOUT_ID:Ljava/lang/String; = "layout_id"

.field private static final ARG_LAYOUT_INDEX:Ljava/lang/String; = "layout_index"

.field private static final ARG_POS_X:Ljava/lang/String; = "pos_x"

.field private static final ARG_POS_Y:Ljava/lang/String; = "pos_y"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mEditListener:Lcom/android/camera/ui/watermark/WatermarkFragment$OnEditActionListener;

.field private mFragmentRoot:Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;

.field private mFreeTextInfoData:Lcom/android/camera/watermark/FreeTextInfoData;

.field private mIsFrontFacing:Z

.field private mLayoutId:I

.field private mLayoutIndex:I

.field private mListener:Lcom/android/camera/ui/watermark/WatermarkFragment$OnFragmentActionListener;

.field private mLocationInfoData:Lcom/android/camera/watermark/LocationInfoData;

.field private mWatermarkEditable:Z

.field private mWatermarkInfoData:Lcom/android/camera/watermark/WatermarkInfoData;

.field private mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

.field private mWatermarkViewRootCenterX:F

.field private mWatermarkViewRootCenterY:F

.field private mWatermarkViewRootMoving:Z

.field private mWatermarkViewRootOrientation:I

.field private onFragmentRootListener:Landroid/view/View$OnTouchListener;

.field private onWatermarkViewRootClickListener:Landroid/view/View$OnClickListener;

.field private onWatermarkViewRootTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Watermark.Fragment"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/watermark/WatermarkFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 30
    iput v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutId:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutIndex:I

    .line 32
    iput-boolean v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootMoving:Z

    .line 33
    iput-boolean v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkEditable:Z

    .line 35
    iput v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootCenterX:F

    .line 36
    iput v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootCenterY:F

    .line 37
    iput v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootOrientation:I

    .line 41
    iput-boolean v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mIsFrontFacing:Z

    .line 83
    new-instance v0, Lcom/android/camera/ui/watermark/WatermarkFragment$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/watermark/WatermarkFragment$1;-><init>(Lcom/android/camera/ui/watermark/WatermarkFragment;)V

    iput-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->onFragmentRootListener:Landroid/view/View$OnTouchListener;

    .line 125
    new-instance v0, Lcom/android/camera/ui/watermark/WatermarkFragment$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/watermark/WatermarkFragment$2;-><init>(Lcom/android/camera/ui/watermark/WatermarkFragment;)V

    iput-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->onWatermarkViewRootTouchListener:Landroid/view/View$OnTouchListener;

    .line 139
    new-instance v0, Lcom/android/camera/ui/watermark/WatermarkFragment$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/watermark/WatermarkFragment$3;-><init>(Lcom/android/camera/ui/watermark/WatermarkFragment;)V

    iput-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->onWatermarkViewRootClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/watermark/WatermarkFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/watermark/WatermarkFragment;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootMoving:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/watermark/WatermarkFragment;)Lcom/android/camera/ui/watermark/WatermarkViewLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/watermark/WatermarkFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/watermark/WatermarkFragment;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/watermark/WatermarkFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/watermark/WatermarkFragment;->requestParentDisallowInterceptTouchEvent(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/ui/watermark/WatermarkFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/watermark/WatermarkFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/camera/ui/watermark/WatermarkFragment;->setWatermarkViewRootMovingFlag(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/watermark/WatermarkFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/watermark/WatermarkFragment;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkEditable:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/watermark/WatermarkFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/watermark/WatermarkFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/camera/ui/watermark/WatermarkFragment;->setWatermarkEditable(Z)V

    return-void
.end method

.method public static newInstance(IIII)Lcom/android/camera/ui/watermark/WatermarkFragment;
    .locals 5
    .param p0, "index"    # I
    .param p1, "layoutID"    # I
    .param p2, "xPos"    # I
    .param p3, "yPos"    # I

    .prologue
    .line 72
    sget-object v2, Lcom/android/camera/ui/watermark/WatermarkFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newInstance-index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , layoutID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    new-instance v1, Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-direct {v1}, Lcom/android/camera/ui/watermark/WatermarkFragment;-><init>()V

    .line 74
    .local v1, "fragment":Lcom/android/camera/ui/watermark/WatermarkFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "layout_index"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v2, "layout_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    const-string v2, "pos_x"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    const-string v2, "pos_y"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/watermark/WatermarkFragment;->setArguments(Landroid/os/Bundle;)V

    .line 80
    return-object v1
.end method

.method private requestParentDisallowInterceptTouchEvent(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "disallow"    # Z

    .prologue
    .line 231
    if-nez p1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 233
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method private setWatermarkEditable(Z)V
    .locals 7
    .param p1, "editable"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 355
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mEditListener:Lcom/android/camera/ui/watermark/WatermarkFragment$OnEditActionListener;

    if-nez v1, :cond_0

    .line 368
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mEditListener:Lcom/android/camera/ui/watermark/WatermarkFragment$OnEditActionListener;

    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutIndex:I

    iget v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootCenterX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootCenterY:F

    float-to-int v4, v4

    invoke-interface {v1, p1, v2, v3, v4}, Lcom/android/camera/ui/watermark/WatermarkFragment$OnEditActionListener;->onEditMode(ZIII)Z

    move-result v0

    .line 360
    .local v0, "isEditMode":Z
    if-eqz v0, :cond_1

    .line 361
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-virtual {v1, v5}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->setClickable(Z)V

    .line 362
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-virtual {v1, v6}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->setWatermarkEditable(Z)V

    .line 367
    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkEditable:Z

    goto :goto_0

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-virtual {v1, v6}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->setClickable(Z)V

    .line 365
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-virtual {v1, v5}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->setWatermarkEditable(Z)V

    goto :goto_1
.end method

.method private setWatermarkViewRootMovingFlag(Z)V
    .locals 1
    .param p1, "moving"    # Z

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootMoving:Z

    if-ne v0, p1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootMoving:Z

    .line 225
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->setPressed(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutId:I

    return v0
.end method

.method public getLayoutIndex()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutIndex:I

    return v0
.end method

.method public getWatermarkViewData(II)Lcom/android/camera/watermark/WatermarkViewData;
    .locals 9
    .param p1, "pictureWidth"    # I
    .param p2, "pictureHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mFragmentRoot:Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    if-nez v2, :cond_2

    :cond_0
    const/4 v7, 0x0

    .line 307
    :cond_1
    :goto_0
    return-object v7

    .line 264
    :cond_2
    const/high16 v8, 0x3f800000    # 1.0f

    .line 265
    .local v8, "scale":F
    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_4

    .line 266
    int-to-float v2, p1

    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mFragmentRoot:Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;

    invoke-virtual {v3}, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v8, v2, v3

    .line 272
    :goto_1
    new-instance v7, Lcom/android/camera/watermark/WatermarkViewData;

    invoke-direct {v7}, Lcom/android/camera/watermark/WatermarkViewData;-><init>()V

    .line 273
    .local v7, "data":Lcom/android/camera/watermark/WatermarkViewData;
    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootCenterX:F

    mul-float/2addr v2, v8

    iput v2, v7, Lcom/android/camera/watermark/WatermarkViewData;->mCenterX:F

    .line 274
    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootCenterY:F

    mul-float/2addr v2, v8

    iput v2, v7, Lcom/android/camera/watermark/WatermarkViewData;->mCenterY:F

    .line 277
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    if-eqz v2, :cond_3

    .line 278
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkInfoData:Lcom/android/camera/watermark/WatermarkInfoData;

    if-eqz v2, :cond_5

    .line 279
    sget-object v2, Lcom/android/camera/ui/watermark/WatermarkFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWatermarkViewData-mWatermarkInfoData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkInfoData:Lcom/android/camera/watermark/WatermarkInfoData;

    invoke-virtual {v4}, Lcom/android/camera/watermark/WatermarkInfoData;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkInfoData:Lcom/android/camera/watermark/WatermarkInfoData;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->setWatermarkInfoData(Lcom/android/camera/watermark/WatermarkInfoData;)V

    .line 285
    :goto_2
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLocationInfoData:Lcom/android/camera/watermark/LocationInfoData;

    if-eqz v2, :cond_6

    .line 286
    sget-object v2, Lcom/android/camera/ui/watermark/WatermarkFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWatermarkViewData-mLocationInfoData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLocationInfoData:Lcom/android/camera/watermark/LocationInfoData;

    invoke-virtual {v4}, Lcom/android/camera/watermark/LocationInfoData;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLocationInfoData:Lcom/android/camera/watermark/LocationInfoData;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->setLocationInfoData(Lcom/android/camera/watermark/LocationInfoData;)V

    .line 292
    :goto_3
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mFreeTextInfoData:Lcom/android/camera/watermark/FreeTextInfoData;

    if-eqz v2, :cond_7

    .line 293
    sget-object v2, Lcom/android/camera/ui/watermark/WatermarkFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWatermarkViewData-mFreeTextInfoData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mFreeTextInfoData:Lcom/android/camera/watermark/FreeTextInfoData;

    invoke-virtual {v4}, Lcom/android/camera/watermark/FreeTextInfoData;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mFreeTextInfoData:Lcom/android/camera/watermark/FreeTextInfoData;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->setFreeTextInfoData(Lcom/android/camera/watermark/FreeTextInfoData;)V

    .line 298
    :goto_4
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->invalidate()V

    .line 301
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 302
    .local v0, "oribitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 303
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 304
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 305
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v7, Lcom/android/camera/watermark/WatermarkViewData;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 268
    .end local v0    # "oribitmap":Landroid/graphics/Bitmap;
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "data":Lcom/android/camera/watermark/WatermarkViewData;
    :cond_4
    int-to-float v2, p1

    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mFragmentRoot:Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;

    invoke-virtual {v3}, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v8, v2, v3

    goto/16 :goto_1

    .line 282
    .restart local v7    # "data":Lcom/android/camera/watermark/WatermarkViewData;
    :cond_5
    sget-object v2, Lcom/android/camera/ui/watermark/WatermarkFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "getWatermarkViewData-mWatermarkInfoData = null"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 289
    :cond_6
    sget-object v2, Lcom/android/camera/ui/watermark/WatermarkFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "getWatermarkViewData-mLocationInfoData = null"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_3

    .line 296
    :cond_7
    sget-object v2, Lcom/android/camera/ui/watermark/WatermarkFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "getWatermarkViewData-mFreeTextInfoData = null"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public notifyFragmentCreated()V
    .locals 2

    .prologue
    .line 64
    iget v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 65
    sget-object v0, Lcom/android/camera/ui/watermark/WatermarkFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "notifyFragmentCreated-ignore => not initial yet"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mListener:Lcom/android/camera/ui/watermark/WatermarkFragment$OnFragmentActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mListener:Lcom/android/camera/ui/watermark/WatermarkFragment$OnFragmentActionListener;

    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutIndex:I

    invoke-interface {v0, v1, p0}, Lcom/android/camera/ui/watermark/WatermarkFragment$OnFragmentActionListener;->onFragmentCreated(ILcom/android/camera/ui/watermark/WatermarkFragment;)V

    goto :goto_0
.end method

.method public onChildCenterUpdate(FF)V
    .locals 0
    .param p1, "childCenterX"    # F
    .param p2, "childCenterY"    # F

    .prologue
    .line 238
    iput p1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootCenterX:F

    .line 239
    iput p2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootCenterY:F

    .line 243
    return-void
.end method

.method public onChildOrientationUpdate(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 246
    iput p1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootOrientation:I

    .line 249
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/camera/ui/watermark/WatermarkFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 150
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 151
    const-string v1, "layout_index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutIndex:I

    .line 152
    const-string v1, "layout_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutId:I

    .line 153
    const-string v1, "pos_x"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootCenterX:F

    .line 154
    const-string v1, "pos_y"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootCenterY:F

    .line 155
    sget-object v1, Lcom/android/camera/ui/watermark/WatermarkFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate-mLayoutIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mLayoutId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPosX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootCenterX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPosY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootCenterY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mListener:Lcom/android/camera/ui/watermark/WatermarkFragment$OnFragmentActionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mListener:Lcom/android/camera/ui/watermark/WatermarkFragment$OnFragmentActionListener;

    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutIndex:I

    invoke-interface {v1, v2, p0}, Lcom/android/camera/ui/watermark/WatermarkFragment$OnFragmentActionListener;->onFragmentCreated(ILcom/android/camera/ui/watermark/WatermarkFragment;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    sget-object v1, Lcom/android/camera/ui/watermark/WatermarkFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onCreate Error => not get correct arguments"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    sget-object v0, Lcom/android/camera/ui/watermark/WatermarkFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateView-mLayoutIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mLayoutId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    iget v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;

    iput-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mFragmentRoot:Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;

    .line 167
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mFragmentRoot:Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;

    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootOrientation:I

    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootCenterX:F

    iget v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootCenterY:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->setPreviousChildInfo(IFF)V

    .line 168
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mFragmentRoot:Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->setOnChildInfoUpdateListener(Lcom/android/camera/ui/watermark/WatermarkFragmentLayout$OnChildInfoUpdateListener;)V

    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mFragmentRoot:Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;

    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->onFragmentRootListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mFragmentRoot:Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;

    const v1, 0x7f0f0231

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    iput-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->setDrawingCacheEnabled(Z)V

    .line 173
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkInfoData:Lcom/android/camera/watermark/WatermarkInfoData;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->setWatermarkInfoData(Lcom/android/camera/watermark/WatermarkInfoData;)V

    .line 174
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLocationInfoData:Lcom/android/camera/watermark/LocationInfoData;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->setLocationInfoData(Lcom/android/camera/watermark/LocationInfoData;)V

    .line 175
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mFreeTextInfoData:Lcom/android/camera/watermark/FreeTextInfoData;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->setFreeTextInfoData(Lcom/android/camera/watermark/FreeTextInfoData;)V

    .line 176
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    iget-boolean v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mIsFrontFacing:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->setCameraFacing(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->onWatermarkViewRootTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 178
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->onWatermarkViewRootClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/watermark/WatermarkFragment;->setWatermarkViewRootMovingFlag(Z)V

    .line 181
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mFragmentRoot:Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mListener:Lcom/android/camera/ui/watermark/WatermarkFragment$OnFragmentActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mListener:Lcom/android/camera/ui/watermark/WatermarkFragment$OnFragmentActionListener;

    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutIndex:I

    invoke-interface {v0, v1}, Lcom/android/camera/ui/watermark/WatermarkFragment$OnFragmentActionListener;->onFragmentDestroyed(I)V

    .line 217
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 218
    sget-object v0, Lcom/android/camera/ui/watermark/WatermarkFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy-mLayoutIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mLayoutId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 201
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->setDrawingCacheEnabled(Z)V

    .line 202
    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-virtual {v1}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 203
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 205
    const/4 v0, 0x0

    .line 207
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/ui/watermark/WatermarkFragment;->setWatermarkViewRootMovingFlag(Z)V

    .line 208
    iput-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    .line 209
    iput-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mFragmentRoot:Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;

    .line 210
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 211
    sget-object v1, Lcom/android/camera/ui/watermark/WatermarkFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroyView-mLayoutIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mLayoutId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 192
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 193
    sget-object v0, Lcom/android/camera/ui/watermark/WatermarkFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause-mLayoutIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mLayoutId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    iget-boolean v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkEditable:Z

    if-eqz v0, :cond_0

    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/watermark/WatermarkFragment;->setWatermarkEditable(Z)V

    .line 197
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 186
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 187
    sget-object v0, Lcom/android/camera/ui/watermark/WatermarkFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume-mLayoutIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mLayoutId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLayoutId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public resetWatermarkViewRootMovingFlag()V
    .locals 2

    .prologue
    .line 311
    sget-object v0, Lcom/android/camera/ui/watermark/WatermarkFragment;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "resetWatermarkViewRootMovingFlag"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/watermark/WatermarkFragment;->setWatermarkViewRootMovingFlag(Z)V

    .line 313
    return-void
.end method

.method public setCameraFacing(Z)V
    .locals 1
    .param p1, "isFrontFacing"    # Z

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mIsFrontFacing:Z

    .line 341
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->setCameraFacing(Z)V

    .line 344
    :cond_0
    return-void
.end method

.method public setFreeTextInfoData(Lcom/android/camera/watermark/FreeTextInfoData;)V
    .locals 1
    .param p1, "freeTextInfoData"    # Lcom/android/camera/watermark/FreeTextInfoData;

    .prologue
    .line 332
    if-nez p1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iput-object p1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mFreeTextInfoData:Lcom/android/camera/watermark/FreeTextInfoData;

    .line 334
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->setFreeTextInfoData(Lcom/android/camera/watermark/FreeTextInfoData;)V

    goto :goto_0
.end method

.method public setLocationInfoData(Lcom/android/camera/watermark/LocationInfoData;)V
    .locals 1
    .param p1, "locationInfoData"    # Lcom/android/camera/watermark/LocationInfoData;

    .prologue
    .line 324
    if-nez p1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iput-object p1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mLocationInfoData:Lcom/android/camera/watermark/LocationInfoData;

    .line 326
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->setLocationInfoData(Lcom/android/camera/watermark/LocationInfoData;)V

    goto :goto_0
.end method

.method public setOnEditActionListener(Lcom/android/camera/ui/watermark/WatermarkFragment$OnEditActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/watermark/WatermarkFragment$OnEditActionListener;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mEditListener:Lcom/android/camera/ui/watermark/WatermarkFragment$OnEditActionListener;

    .line 61
    return-void
.end method

.method public setOnFragmentActionListener(Lcom/android/camera/ui/watermark/WatermarkFragment$OnFragmentActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/watermark/WatermarkFragment$OnFragmentActionListener;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mListener:Lcom/android/camera/ui/watermark/WatermarkFragment$OnFragmentActionListener;

    .line 57
    return-void
.end method

.method public setWatermarkInfoData(Lcom/android/camera/watermark/WatermarkInfoData;)V
    .locals 2
    .param p1, "watermarkInfoData"    # Lcom/android/camera/watermark/WatermarkInfoData;

    .prologue
    .line 316
    if-nez p1, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iput-object p1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkInfoData:Lcom/android/camera/watermark/WatermarkInfoData;

    .line 318
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRoot:Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    iget-object v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkInfoData:Lcom/android/camera/watermark/WatermarkInfoData;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->setWatermarkInfoData(Lcom/android/camera/watermark/WatermarkInfoData;)V

    goto :goto_0
.end method

.method public updateWatermarkPosition()V
    .locals 4

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mFragmentRoot:Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;

    if-nez v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mFragmentRoot:Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;

    iget v1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootOrientation:I

    iget v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootCenterX:F

    iget v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mWatermarkViewRootCenterY:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->setPreviousChildInfo(IFF)V

    .line 351
    iget-object v0, p0, Lcom/android/camera/ui/watermark/WatermarkFragment;->mFragmentRoot:Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/watermark/WatermarkFragmentLayout;->requestLayout()V

    goto :goto_0
.end method
