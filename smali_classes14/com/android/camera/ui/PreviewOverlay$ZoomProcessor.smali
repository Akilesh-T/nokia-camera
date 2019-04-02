.class Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;
.super Ljava/lang/Object;
.source "PreviewOverlay.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PreviewOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomProcessor"
.end annotation


# static fields
.field private static final ZOOM_UI_DONUT:F = 0.25f

.field private static final ZOOM_UI_SIZE:F = 0.8f


# instance fields
.field private final CIRCLE_CENTER_TO_BOTTOM:F

.field private final DRAG_BAR_ALPHA_RATIO:F

.field private final DRAG_CIRCLE_RATIO:F

.field private final NORMAL_CIRCLE_RATIO:F

.field private final PRESS_CIRCLE_RATIO:F

.field private final TAG:Lcom/android/camera/debug/Log$Tag;

.field private final ZOOM_BOUNDARY_CIRCLE_RATIO:F

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mCurrentOrintation:I

.field private mCurrentRatio:F

.field private final mDragCirclePaint:Landroid/graphics/Paint;

.field private mIsPinching:Z

.field private mLeft:Landroid/graphics/drawable/BitmapDrawable;

.field private mLeftRect:Landroid/graphics/Rect;

.field private final mLinePaint:Landroid/graphics/Paint;

.field private mMaxRatio:F

.field private final mMinRatio:F

.field private mRight:Landroid/graphics/drawable/BitmapDrawable;

.field private mRightRect:Landroid/graphics/Rect;

.field private final mTextPaint:Landroid/graphics/Paint;

.field private mVisible:Z

.field private final mZoomBackgroundColor:I

.field private mZoomRatioDiff:F

.field private mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mZoomStrokeWidth:I

.field private final mZoomTextSize:I

.field private sZoomFormat:Ljava/text/DecimalFormat;

.field final synthetic this$0:Lcom/android/camera/ui/PreviewOverlay;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/PreviewOverlay;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    const/4 v2, 0x1

    .line 918
    iput-object p1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v3, "ZoomProcessor"

    invoke-direct {v0, v3}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 884
    iput v5, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mMinRatio:F

    .line 890
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->SHOW_ZOOM_ALWAYS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$1200(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$1300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mVisible:Z

    .line 892
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "##0.0x"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->sZoomFormat:Ljava/text/DecimalFormat;

    .line 895
    iput-boolean v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mIsPinching:Z

    .line 903
    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->PRESS_CIRCLE_RATIO:F

    .line 904
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->NORMAL_CIRCLE_RATIO:F

    .line 905
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->DRAG_CIRCLE_RATIO:F

    .line 906
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->ZOOM_BOUNDARY_CIRCLE_RATIO:F

    .line 907
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->DRAG_BAR_ALPHA_RATIO:F

    .line 919
    invoke-virtual {p1}, Lcom/android/camera/ui/PreviewOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09026c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomTextSize:I

    .line 920
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomTextSize:I

    int-to-float v0, v0

    const v1, 0x402ccccd    # 2.7f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->CIRCLE_CENTER_TO_BOTTOM:F

    .line 922
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mTextPaint:Landroid/graphics/Paint;

    .line 923
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 924
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 925
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 926
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 927
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 929
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    .line 930
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 931
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 932
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 933
    invoke-virtual {p1}, Lcom/android/camera/ui/PreviewOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09026a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomStrokeWidth:I

    .line 934
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 936
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mDragCirclePaint:Landroid/graphics/Paint;

    .line 937
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mDragCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 938
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mDragCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 939
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mDragCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 941
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLinePaint:Landroid/graphics/Paint;

    .line 942
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 943
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 944
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 945
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 946
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLinePaint:Landroid/graphics/Paint;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 947
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLinePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-direct {v1, v2, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 949
    invoke-virtual {p1}, Lcom/android/camera/ui/PreviewOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomBackgroundColor:I

    .line 951
    return-void

    :cond_2
    move v0, v1

    .line 890
    goto/16 :goto_0

    .line 947
    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 876
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->setupZoom(FF)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    .prologue
    .line 876
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomRatioDiff:F

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    .prologue
    .line 876
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mMaxRatio:F

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    .prologue
    .line 876
    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mIsPinching:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;
    .param p1, "x1"    # Z

    .prologue
    .line 876
    iput-boolean p1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mIsPinching:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    .prologue
    .line 876
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentRatio:F

    return v0
.end method

.method private setupZoom(FF)V
    .locals 8
    .param p1, "zoomMax"    # F
    .param p2, "zoom"    # F

    .prologue
    const/4 v7, 0x0

    .line 1284
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->setZoomMax(F)V

    .line 1285
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->setZoom(F)V

    .line 1286
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/PreviewOverlay;->access$2400(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/PreviewOverlay;->access$2500(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1287
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/PreviewOverlay;->access$1300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1288
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$2400(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/android/camera/ui/PreviewOverlay;->access$2602(Lcom/android/camera/ui/PreviewOverlay;I)I

    .line 1289
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v3}, Lcom/android/camera/ui/PreviewOverlay;->access$2500(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v4}, Lcom/android/camera/ui/PreviewOverlay;->access$1800(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v4}, Lcom/android/camera/ui/PreviewOverlay;->access$1900(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->CIRCLE_CENTER_TO_BOTTOM:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/ui/PreviewOverlay;->access$2702(Lcom/android/camera/ui/PreviewOverlay;I)I

    .line 1290
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->CIRCLE_CENTER_TO_BOTTOM:F

    .line 1291
    .local v0, "offset":F
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v3}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    iget-object v4, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v4}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v5}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v6}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v1, v2}, Lcom/android/camera/ui/PreviewOverlay;->access$202(Lcom/android/camera/ui/PreviewOverlay;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 1292
    iput-object v7, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLeftRect:Landroid/graphics/Rect;

    .line 1293
    iput-object v7, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mRightRect:Landroid/graphics/Rect;

    .line 1296
    .end local v0    # "offset":F
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v1}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    .line 1297
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 33
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1002
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mVisible:Z

    move/from16 v28, v0

    if-nez v28, :cond_1

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mMaxRatio:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_0

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$1300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->sZoomFormat:Ljava/text/DecimalFormat;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentRatio:F

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v23

    .line 1011
    .local v23, "zoomValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$1400(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$WideModeControl;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->draw(Landroid/graphics/Canvas;Ljava/lang/String;)V

    goto :goto_0

    .line 1013
    .end local v23    # "zoomValue":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$1400(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$WideModeControl;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->draw(Landroid/graphics/Canvas;Ljava/lang/String;)V

    goto :goto_0

    .line 1016
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v28

    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v28

    if-eqz v28, :cond_0

    .line 1018
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mMaxRatio:F

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    div-float v6, v28, v29

    .line 1019
    .local v6, "DIFF":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->sZoomFormat:Ljava/text/DecimalFormat;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentRatio:F

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v23

    .line 1021
    .restart local v23    # "zoomValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$500(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 1023
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentRatio:F

    move/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentRatio:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mMaxRatio:F

    move/from16 v29, v0

    cmpl-float v28, v28, v29

    if-nez v28, :cond_6

    :cond_4
    const/4 v14, 0x1

    .line 1024
    .local v14, "isZoomEnd":Z
    :goto_1
    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    .line 1025
    .local v8, "center_circle_paint":Landroid/graphics/Paint;
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomTextSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v29, v0

    if-eqz v14, :cond_8

    const/high16 v28, 0x3fc00000    # 1.5f

    :goto_3
    mul-float v9, v29, v28

    .line 1028
    .local v9, "center_circle_radius":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1029
    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->CIRCLE_CENTER_TO_BOTTOM:F

    move/from16 v30, v0

    sub-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/camera/ui/PreviewOverlay;->access$1900(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/camera/ui/PreviewOverlay;->access$2400(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->CIRCLE_CENTER_TO_BOTTOM:F

    move/from16 v32, v0

    add-float v31, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/camera/ui/PreviewOverlay;->access$1900(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1030
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomBackgroundColor:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1031
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1033
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1034
    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->CIRCLE_CENTER_TO_BOTTOM:F

    move/from16 v30, v0

    const/high16 v31, 0x40400000    # 3.0f

    mul-float v30, v30, v31

    sub-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/camera/ui/PreviewOverlay;->access$1900(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/camera/ui/PreviewOverlay;->access$2400(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->CIRCLE_CENTER_TO_BOTTOM:F

    move/from16 v32, v0

    add-float v31, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/camera/ui/PreviewOverlay;->access$1900(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomBackgroundColor:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setColor(I)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    sget-object v29, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->CIRCLE_CENTER_TO_BOTTOM:F

    move/from16 v30, v0

    const/high16 v31, 0x40000000    # 2.0f

    mul-float v30, v30, v31

    sub-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/camera/ui/PreviewOverlay;->access$1900(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomTextSize:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x3fc00000    # 1.5f

    mul-float v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    const/16 v29, -0x1

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setColor(I)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    sget-object v29, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    const/16 v29, 0x66

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->CIRCLE_CENTER_TO_BOTTOM:F

    move/from16 v30, v0

    const/high16 v31, 0x40000000    # 2.0f

    mul-float v30, v30, v31

    sub-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/camera/ui/PreviewOverlay;->access$1900(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomTextSize:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x3fc00000    # 1.5f

    mul-float v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    const/16 v29, 0xff

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1046
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1047
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentOrintation:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->CIRCLE_CENTER_TO_BOTTOM:F

    move/from16 v31, v0

    const/high16 v32, 0x40000000    # 2.0f

    mul-float v31, v31, v32

    sub-float v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/camera/ui/PreviewOverlay;->access$1900(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v30, v30, v31

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomTextSize:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->CIRCLE_CENTER_TO_BOTTOM:F

    move/from16 v30, v0

    const/high16 v31, 0x40000000    # 2.0f

    mul-float v30, v30, v31

    sub-float v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomTextSize:I

    move/from16 v30, v0

    div-int/lit8 v30, v30, 0x3

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/camera/ui/PreviewOverlay;->access$1900(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1050
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1052
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    .line 1053
    .local v10, "clipPath":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/camera/ui/PreviewOverlay;->access$1900(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v30

    add-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    sget-object v30, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v10, v0, v1, v9, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1054
    invoke-virtual {v10}, Landroid/graphics/Path;->close()V

    .line 1055
    sget-object v28, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v10, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    const/16 v29, 0x66

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    const/16 v29, 0x66

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1059
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomTextSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const v29, 0x3f4ccccd    # 0.8f

    mul-float v12, v28, v29

    .line 1060
    .local v12, "drag_zoom_text_size":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomTextSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x3fc00000    # 1.5f

    mul-float v28, v28, v29

    const v29, 0x3f4ccccd    # 0.8f

    mul-float v11, v28, v29

    .line 1061
    .local v11, "drag_zoom_boundary_circle_radius":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1062
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentRatio:F

    move/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    sub-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v18

    .line 1063
    .local v18, "min_diff":F
    cmpl-float v28, v18, v6

    if-lez v28, :cond_9

    .line 1064
    new-instance v19, Landroid/graphics/Path;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Path;-><init>()V

    .line 1065
    .local v19, "path":Landroid/graphics/Path;
    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/camera/ui/PreviewOverlay;->access$1900(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v30

    add-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v28, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/camera/ui/PreviewOverlay;->access$1900(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v30

    add-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1085
    .end local v19    # "path":Landroid/graphics/Path;
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mMaxRatio:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentRatio:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v17

    .line 1086
    .local v17, "max_diff":F
    cmpl-float v28, v17, v6

    if-lez v28, :cond_a

    .line 1087
    new-instance v19, Landroid/graphics/Path;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Path;-><init>()V

    .line 1088
    .restart local v19    # "path":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v28, v28, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/camera/ui/PreviewOverlay;->access$1900(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v30

    add-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2400(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/camera/ui/PreviewOverlay;->access$1900(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v30

    add-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1107
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/camera/ui/PreviewOverlay;->access$1900(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v30

    add-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v9, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    const/16 v29, 0xff

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    const/16 v29, 0xff

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomTextSize:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1114
    if-eqz v14, :cond_0

    .line 1115
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1116
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentOrintation:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/camera/ui/PreviewOverlay;->access$1900(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v31

    add-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomTextSize:I

    move/from16 v30, v0

    div-int/lit8 v30, v30, 0x3

    add-int v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/camera/ui/PreviewOverlay;->access$1900(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v30

    add-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1118
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 1023
    .end local v8    # "center_circle_paint":Landroid/graphics/Paint;
    .end local v9    # "center_circle_radius":F
    .end local v10    # "clipPath":Landroid/graphics/Path;
    .end local v11    # "drag_zoom_boundary_circle_radius":F
    .end local v12    # "drag_zoom_text_size":F
    .end local v14    # "isZoomEnd":Z
    .end local v17    # "max_diff":F
    .end local v18    # "min_diff":F
    .end local v19    # "path":Landroid/graphics/Path;
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 1024
    .restart local v14    # "isZoomEnd":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mDragCirclePaint:Landroid/graphics/Paint;

    goto/16 :goto_2

    .line 1025
    .restart local v8    # "center_circle_paint":Landroid/graphics/Paint;
    :cond_8
    const/high16 v28, 0x3f000000    # 0.5f

    goto/16 :goto_3

    .line 1068
    .restart local v9    # "center_circle_radius":F
    .restart local v10    # "clipPath":Landroid/graphics/Path;
    .restart local v11    # "drag_zoom_boundary_circle_radius":F
    .restart local v12    # "drag_zoom_text_size":F
    .restart local v18    # "min_diff":F
    :cond_9
    const/16 v28, 0x0

    cmpl-float v28, v18, v28

    if-ltz v28, :cond_5

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    div-float v30, v18, v6

    sub-float v29, v29, v30

    mul-float v26, v28, v29

    .line 1070
    .local v26, "zoom_min_center_x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/ui/PreviewOverlay;->access$1900(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v29

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v27, v0

    .line 1072
    .local v27, "zoom_min_center_y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v11, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1074
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1075
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentOrintation:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->sZoomFormat:Ljava/text/DecimalFormat;

    move-object/from16 v28, v0

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v28

    const/high16 v29, 0x40400000    # 3.0f

    div-float v29, v12, v29

    add-float v29, v29, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v26

    move/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1077
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1079
    new-instance v19, Landroid/graphics/Path;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Path;-><init>()V

    .line 1080
    .restart local v19    # "path":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v28, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/camera/ui/PreviewOverlay;->access$1900(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v30

    add-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1081
    add-float v28, v26, v11

    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 1092
    .end local v19    # "path":Landroid/graphics/Path;
    .end local v26    # "zoom_min_center_x":F
    .end local v27    # "zoom_min_center_y":F
    .restart local v17    # "max_diff":F
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    div-float v30, v17, v6

    add-float v29, v29, v30

    mul-float v24, v28, v29

    .line 1093
    .local v24, "zoom_max_center_x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/ui/PreviewOverlay;->access$1900(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v29

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v25, v0

    .line 1095
    .local v25, "zoom_max_center_y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v11, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1097
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1098
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentOrintation:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->sZoomFormat:Ljava/text/DecimalFormat;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mMaxRatio:F

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v28

    const/high16 v29, 0x40400000    # 3.0f

    div-float v29, v12, v29

    add-float v29, v29, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v24

    move/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1100
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1102
    new-instance v19, Landroid/graphics/Path;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Path;-><init>()V

    .line 1103
    .restart local v19    # "path":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v28, v28, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/camera/ui/PreviewOverlay;->access$1900(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v30

    add-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1104
    sub-float v28, v24, v11

    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 1121
    .end local v8    # "center_circle_paint":Landroid/graphics/Paint;
    .end local v9    # "center_circle_radius":F
    .end local v10    # "clipPath":Landroid/graphics/Path;
    .end local v11    # "drag_zoom_boundary_circle_radius":F
    .end local v12    # "drag_zoom_text_size":F
    .end local v14    # "isZoomEnd":Z
    .end local v17    # "max_diff":F
    .end local v18    # "min_diff":F
    .end local v19    # "path":Landroid/graphics/Path;
    .end local v24    # "zoom_max_center_x":F
    .end local v25    # "zoom_max_center_y":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v28

    if-eqz v28, :cond_11

    const v7, 0x3f99999a    # 1.2f

    .line 1122
    .local v7, "SCALE":F
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomBackgroundColor:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setColor(I)V

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    sget-object v29, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomTextSize:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x3fc00000    # 1.5f

    mul-float v30, v30, v31

    mul-float v30, v30, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    const/16 v29, -0x1

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setColor(I)V

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    sget-object v29, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    const/16 v29, 0x66

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomTextSize:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x3fc00000    # 1.5f

    mul-float v30, v30, v31

    mul-float v30, v30, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    const/16 v29, 0xff

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1130
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomTextSize:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v7

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1132
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentOrintation:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomTextSize:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v7

    const/high16 v31, 0x40400000    # 3.0f

    div-float v30, v30, v31

    add-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomTextSize:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1135
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLeft:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v28, v0

    if-nez v28, :cond_c

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f02024e

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    check-cast v28, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLeft:Landroid/graphics/drawable/BitmapDrawable;

    .line 1142
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLeft:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLeftRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    if-nez v28, :cond_d

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomTextSize:I

    move/from16 v29, v0

    mul-int/lit8 v29, v29, 0x3

    sub-int v15, v28, v29

    .line 1144
    .local v15, "left_center_x":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v16

    .line 1145
    .local v16, "left_center_y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLeft:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v28

    div-int/lit8 v13, v28, 0x2

    .line 1146
    .local v13, "h_offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLeft:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v28

    div-int/lit8 v22, v28, 0x2

    .line 1147
    .local v22, "v_offset":I
    new-instance v28, Landroid/graphics/Rect;

    sub-int v29, v15, v13

    sub-int v30, v16, v22

    add-int v31, v15, v13

    add-int v32, v16, v22

    invoke-direct/range {v28 .. v32}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLeftRect:Landroid/graphics/Rect;

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLeft:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLeftRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1151
    .end local v13    # "h_offset":I
    .end local v15    # "left_center_x":I
    .end local v16    # "left_center_y":I
    .end local v22    # "v_offset":I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentRatio:F

    move/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    cmpl-float v28, v28, v29

    if-lez v28, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLeft:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLeftRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    if-eqz v28, :cond_e

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLeft:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1155
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mRight:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v28, v0

    if-nez v28, :cond_f

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0202c4

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    check-cast v28, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mRight:Landroid/graphics/drawable/BitmapDrawable;

    .line 1159
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mRight:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mRightRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    if-nez v28, :cond_10

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomTextSize:I

    move/from16 v29, v0

    mul-int/lit8 v29, v29, 0x3

    add-int v20, v28, v29

    .line 1161
    .local v20, "right_center_x":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v21

    .line 1162
    .local v21, "right_center_y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mRight:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v28

    div-int/lit8 v13, v28, 0x2

    .line 1163
    .restart local v13    # "h_offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mRight:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v28

    div-int/lit8 v22, v28, 0x2

    .line 1164
    .restart local v22    # "v_offset":I
    new-instance v28, Landroid/graphics/Rect;

    sub-int v29, v20, v13

    sub-int v30, v21, v22

    add-int v31, v20, v13

    add-int v32, v21, v22

    invoke-direct/range {v28 .. v32}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mRightRect:Landroid/graphics/Rect;

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mRight:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mRightRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1168
    .end local v13    # "h_offset":I
    .end local v20    # "right_center_x":I
    .end local v21    # "right_center_y":I
    .end local v22    # "v_offset":I
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentRatio:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mMaxRatio:F

    move/from16 v29, v0

    cmpg-float v28, v28, v29

    if-gez v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mRight:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mRightRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mRight:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 1121
    .end local v7    # "SCALE":F
    :cond_11
    const/high16 v7, 0x3f800000    # 1.0f

    goto/16 :goto_6
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 955
    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLeft:Landroid/graphics/drawable/BitmapDrawable;

    .line 956
    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mRight:Landroid/graphics/drawable/BitmapDrawable;

    .line 957
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 958
    return-void
.end method

.method public hideZoomUI()V
    .locals 1

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1281
    :goto_0
    return-void

    .line 1279
    :cond_0
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->SHOW_ZOOM_ALWAYS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$1200(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$1300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mVisible:Z

    .line 1280
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    goto :goto_0

    .line 1279
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 1259
    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mVisible:Z

    return v0
.end method

.method public layout(IIII)V
    .locals 8
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    const/4 v7, 0x0

    .line 978
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v2}, Lcom/android/camera/ui/PreviewOverlay;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/ui/PreviewOverlay;->access$2402(Lcom/android/camera/ui/PreviewOverlay;I)I

    .line 979
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v2}, Lcom/android/camera/ui/PreviewOverlay;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/ui/PreviewOverlay;->access$2502(Lcom/android/camera/ui/PreviewOverlay;I)I

    .line 980
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/PreviewOverlay;->access$1300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 981
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/PreviewOverlay;->access$1400(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$WideModeControl;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/camera/ui/PreviewOverlay$WideModeControl;->setCenterPoint(IIII)V

    .line 998
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v1}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    .line 999
    return-void

    .line 983
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/PreviewOverlay;->access$2400(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/PreviewOverlay;->access$2500(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 984
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    add-int v2, p3, p1

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/android/camera/ui/PreviewOverlay;->access$2602(Lcom/android/camera/ui/PreviewOverlay;I)I

    .line 985
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v3}, Lcom/android/camera/ui/PreviewOverlay;->access$2500(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v4}, Lcom/android/camera/ui/PreviewOverlay;->access$1800(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v4}, Lcom/android/camera/ui/PreviewOverlay;->access$1900(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->CIRCLE_CENTER_TO_BOTTOM:F

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/ui/PreviewOverlay;->access$2702(Lcom/android/camera/ui/PreviewOverlay;I)I

    .line 986
    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomTextSize:I

    int-to-float v1, v1

    const v2, 0x402ccccd    # 2.7f

    mul-float v0, v1, v2

    .line 987
    .local v0, "offset":F
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v3}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    iget-object v4, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v4}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v5}, Lcom/android/camera/ui/PreviewOverlay;->access$2600(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v6}, Lcom/android/camera/ui/PreviewOverlay;->access$2700(Lcom/android/camera/ui/PreviewOverlay;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v1, v2}, Lcom/android/camera/ui/PreviewOverlay;->access$202(Lcom/android/camera/ui/PreviewOverlay;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 988
    iput-object v7, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLeftRect:Landroid/graphics/Rect;

    .line 989
    iput-object v7, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mRightRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 991
    .end local v0    # "offset":F
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    add-int v2, p3, p1

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/android/camera/ui/PreviewOverlay;->access$2602(Lcom/android/camera/ui/PreviewOverlay;I)I

    .line 992
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    add-int v2, p4, p2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/android/camera/ui/PreviewOverlay;->access$2702(Lcom/android/camera/ui/PreviewOverlay;I)I

    .line 993
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v1, v7}, Lcom/android/camera/ui/PreviewOverlay;->access$202(Lcom/android/camera/ui/PreviewOverlay;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 994
    iput-object v7, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mLeftRect:Landroid/graphics/Rect;

    .line 995
    iput-object v7, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mRightRect:Landroid/graphics/Rect;

    goto/16 :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 9
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const v6, 0x3ea8f5c3    # 0.33f

    .line 1204
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    .line 1205
    .local v2, "sf":F
    iget-object v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Zoom] sf:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1206
    iget-object v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v3}, Lcom/android/camera/ui/PreviewOverlay;->access$1300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1207
    iget-object v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v3, v8}, Lcom/android/camera/ui/PreviewOverlay;->access$2302(Lcom/android/camera/ui/PreviewOverlay;Z)Z

    .line 1209
    :cond_0
    iget v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentRatio:F

    add-float/2addr v3, v6

    mul-float/2addr v3, v2

    mul-float/2addr v3, v2

    sub-float/2addr v3, v6

    iput v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentRatio:F

    .line 1210
    iget v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentRatio:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_1

    .line 1211
    iput v7, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentRatio:F

    .line 1213
    :cond_1
    iget v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentRatio:F

    iget v4, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mMaxRatio:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 1214
    iget v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mMaxRatio:F

    iput v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentRatio:F

    .line 1222
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1223
    .local v0, "now":J
    iget-object v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v3}, Lcom/android/camera/ui/PreviewOverlay;->access$1700(Lcom/android/camera/ui/PreviewOverlay;)J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-lez v3, :cond_4

    .line 1224
    iget-object v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v3}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1225
    iget-object v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "[Zoom] onZoomValueChanged - onScale"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1226
    iget-object v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v3}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentRatio:F

    invoke-interface {v3, v4}, Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;->onZoomValueChanged(F)V

    .line 1228
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    const-wide/16 v4, 0x10

    add-long/2addr v4, v0

    invoke-static {v3, v4, v5}, Lcom/android/camera/ui/PreviewOverlay;->access$1702(Lcom/android/camera/ui/PreviewOverlay;J)J

    .line 1230
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v3}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    .line 1232
    return v8
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v0, 0x1

    .line 1237
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/PreviewOverlay;->access$700(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->showZoomUI()V

    .line 1238
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1239
    const/4 v0, 0x0

    .line 1246
    :goto_0
    return v0

    .line 1241
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1242
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;->onZoomStart()V

    .line 1244
    :cond_1
    iput-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mIsPinching:Z

    .line 1245
    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v1}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$700(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->hideZoomUI()V

    .line 1252
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;->onZoomEnd()V

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    .line 1256
    return-void
.end method

.method public setOrintation(I)V
    .locals 1
    .param p1, "orintation"    # I

    .prologue
    .line 973
    iput p1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentOrintation:I

    .line 974
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    .line 975
    return-void
.end method

.method public setZoom(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 968
    iput p1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentRatio:F

    .line 969
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    .line 970
    return-void
.end method

.method public setZoomByScaleRatio(F)V
    .locals 6
    .param p1, "ratio"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1177
    iput p1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentRatio:F

    .line 1178
    iget v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentRatio:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 1179
    iput v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentRatio:F

    .line 1181
    :cond_0
    iget v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentRatio:F

    iget v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mMaxRatio:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 1182
    iget v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mMaxRatio:F

    iput v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentRatio:F

    .line 1190
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1191
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$1700(Lcom/android/camera/ui/PreviewOverlay;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 1192
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1193
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "[Zoom] onZoomValueChanged - setZoomByScaleRatio"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1194
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v2}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mCurrentRatio:F

    invoke-interface {v2, v3}, Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;->onZoomValueChanged(F)V

    .line 1196
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    const-wide/16 v4, 0x10

    add-long/2addr v4, v0

    invoke-static {v2, v4, v5}, Lcom/android/camera/ui/PreviewOverlay;->access$1702(Lcom/android/camera/ui/PreviewOverlay;J)J

    .line 1198
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v2}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    .line 1199
    return-void
.end method

.method public setZoomMax(F)V
    .locals 2
    .param p1, "zoomMaxRatio"    # F

    .prologue
    .line 962
    iput p1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mMaxRatio:F

    .line 963
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mMaxRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mZoomRatioDiff:F

    .line 964
    return-void
.end method

.method public showZoomUI()V
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1273
    :goto_0
    return-void

    .line 1271
    :cond_0
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->SHOW_ZOOM_ON_SCREEN:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$1200(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$1300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mVisible:Z

    .line 1272
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    goto :goto_0

    .line 1271
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateVisible()V
    .locals 1

    .prologue
    .line 1263
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->SHOW_ZOOM_ALWAYS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$1200(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$1300(Lcom/android/camera/ui/PreviewOverlay;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->mVisible:Z

    .line 1264
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    .line 1265
    return-void

    .line 1263
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
