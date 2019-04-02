.class final Lcom/android/camera/settings/ResolutionUtil$1;
.super Ljava/lang/Object;
.source "ResolutionUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/settings/ResolutionUtil;->parseAvailableSizes(Ljava/util/List;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;)I
    .locals 2
    .param p1, "resolutionBucket"    # Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;
    .param p2, "resolutionBucket2"    # Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;

    .prologue
    .line 273
    iget-object v0, p2, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->maxPixels:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->maxPixels:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 270
    check-cast p1, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;

    check-cast p2, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/settings/ResolutionUtil$1;->compare(Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;)I

    move-result v0

    return v0
.end method
