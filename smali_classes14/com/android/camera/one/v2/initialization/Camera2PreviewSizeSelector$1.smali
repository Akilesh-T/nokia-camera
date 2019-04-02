.class Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector$1;
.super Ljava/lang/Object;
.source "Camera2PreviewSizeSelector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->getLargestPreviewSize()Lcom/android/camera/util/Size;
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
.field final synthetic this$0:Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector$1;->this$0:Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)I
    .locals 4
    .param p1, "size1"    # Lcom/android/camera/util/Size;
    .param p2, "size2"    # Lcom/android/camera/util/Size;

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    mul-int v0, v2, v3

    .line 126
    .local v0, "area1":I
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    mul-int v1, v2, v3

    .line 127
    .local v1, "area2":I
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 122
    check-cast p1, Lcom/android/camera/util/Size;

    check-cast p2, Lcom/android/camera/util/Size;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector$1;->compare(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)I

    move-result v0

    return v0
.end method
