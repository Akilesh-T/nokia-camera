.class final Lcom/android/camera/settings/SettingsUtil$1;
.super Ljava/lang/Object;
.source "SettingsUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/settings/SettingsUtil;->getSelectedCameraPictureSizes(Ljava/util/List;I)Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;
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
        "Lcom/android/camera/util/Size;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/camera/util/Size;
    .param p2, "rhs"    # Lcom/android/camera/util/Size;

    .prologue
    .line 231
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    mul-int v0, v2, v3

    .line 232
    .local v0, "leftArea":I
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    mul-int v1, v2, v3

    .line 233
    .local v1, "rightArea":I
    sub-int v2, v1, v0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 228
    check-cast p1, Lcom/android/camera/util/Size;

    check-cast p2, Lcom/android/camera/util/Size;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/settings/SettingsUtil$1;->compare(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)I

    move-result v0

    return v0
.end method
