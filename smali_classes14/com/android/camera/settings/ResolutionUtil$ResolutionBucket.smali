.class Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;
.super Ljava/lang/Object;
.source "ResolutionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/settings/ResolutionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResolutionBucket"
.end annotation


# instance fields
.field public aspectRatio:Ljava/lang/Float;

.field public largest:Lcom/android/camera/util/Size;

.field public maxPixels:Ljava/lang/Integer;

.field public sizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->sizes:Ljava/util/List;

    .line 101
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->maxPixels:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/settings/ResolutionUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/settings/ResolutionUtil$1;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/camera/util/Size;)V
    .locals 3
    .param p1, "size"    # Lcom/android/camera/util/Size;

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->sizes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->sizes:Ljava/util/List;

    new-instance v1, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket$1;

    invoke-direct {v1, p0}, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket$1;-><init>(Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 119
    iget-object v0, p0, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->sizes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->width()I

    move-result v1

    iget-object v0, p0, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->sizes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v0

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->maxPixels:Ljava/lang/Integer;

    .line 120
    return-void
.end method
