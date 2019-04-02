.class Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket$1;
.super Ljava/lang/Object;
.source "ResolutionUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->add(Lcom/android/camera/util/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/camera/util/Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;


# direct methods
.method constructor <init>(Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket$1;->this$0:Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)I
    .locals 3
    .param p1, "size"    # Lcom/android/camera/util/Size;
    .param p2, "size2"    # Lcom/android/camera/util/Size;

    .prologue
    .line 115
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->width()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/camera/util/Size;->height()I

    move-result v1

    mul-int/2addr v0, v1

    .line 116
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->width()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->height()I

    move-result v2

    mul-int/2addr v1, v2

    .line 115
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 111
    check-cast p1, Lcom/android/camera/util/Size;

    check-cast p2, Lcom/android/camera/util/Size;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket$1;->compare(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)I

    move-result v0

    return v0
.end method
