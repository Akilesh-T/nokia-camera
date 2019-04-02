.class public Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;
.super Ljava/lang/Object;
.source "SettingsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/settings/SettingsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectedPictureSizes"
.end annotation


# instance fields
.field public large:Lcom/android/camera/util/Size;

.field public medium:Lcom/android/camera/util/Size;

.field public small:Lcom/android/camera/util/Size;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromSetting(Ljava/lang/String;Ljava/util/List;)Lcom/android/camera/util/Size;
    .locals 3
    .param p1, "sizeSetting"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;)",
            "Lcom/android/camera/util/Size;"
        }
    .end annotation

    .prologue
    .line 88
    .local p2, "supportedSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    const-string v1, "large"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->large:Lcom/android/camera/util/Size;

    .line 100
    :cond_0
    :goto_0
    return-object v0

    .line 90
    :cond_1
    const-string v1, "medium"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    iget-object v0, p0, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->medium:Lcom/android/camera/util/Size;

    goto :goto_0

    .line 92
    :cond_2
    const-string v1, "small"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    iget-object v0, p0, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->small:Lcom/android/camera/util/Size;

    goto :goto_0

    .line 94
    :cond_3
    if-eqz p1, :cond_4

    const-string v1, "x"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 95
    invoke-static {p1}, Lcom/android/camera/settings/SettingsUtil;->sizeFromSettingString(Ljava/lang/String;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 96
    .local v0, "desiredSize":Lcom/android/camera/util/Size;
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    .end local v0    # "desiredSize":Lcom/android/camera/util/Size;
    :cond_4
    iget-object v0, p0, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->large:Lcom/android/camera/util/Size;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectedPictureSizes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->large:Lcom/android/camera/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->medium:Lcom/android/camera/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/settings/SettingsUtil$SelectedPictureSizes;->small:Lcom/android/camera/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
