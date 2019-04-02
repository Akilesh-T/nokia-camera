.class Lcom/android/camera/SlowmotionModule$7;
.super Ljava/lang/Object;
.source "SlowmotionModule.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SlowmotionModule;->setHFRParameter()V
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
        "Lcom/android/ex/camera2/portability/Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SlowmotionModule;


# direct methods
.method constructor <init>(Lcom/android/camera/SlowmotionModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 801
    iput-object p1, p0, Lcom/android/camera/SlowmotionModule$7;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/ex/camera2/portability/Size;Lcom/android/ex/camera2/portability/Size;)I
    .locals 2
    .param p1, "size1"    # Lcom/android/ex/camera2/portability/Size;
    .param p2, "size2"    # Lcom/android/ex/camera2/portability/Size;

    .prologue
    .line 805
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 801
    check-cast p1, Lcom/android/ex/camera2/portability/Size;

    check-cast p2, Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/SlowmotionModule$7;->compare(Lcom/android/ex/camera2/portability/Size;Lcom/android/ex/camera2/portability/Size;)I

    move-result v0

    return v0
.end method
