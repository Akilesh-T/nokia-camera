.class public Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;
.super Ljava/lang/Object;
.source "SettingsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/settings/SettingsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectedVideoQualities"
.end annotation


# instance fields
.field public extraSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public large:I

.field public medium:I

.field public small:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput v0, p0, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->large:I

    .line 112
    iput v0, p0, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->medium:I

    .line 113
    iput v0, p0, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->small:I

    .line 114
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->extraSizes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getFromSetting(Ljava/lang/String;)I
    .locals 3
    .param p1, "sizeSetting"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->extraSizes:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->extraSizes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 121
    .local v0, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 134
    .end local v0    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_0
    return v1

    .line 125
    :cond_1
    const-string v1, "small"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "medium"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 126
    const-string p1, "large"

    .line 129
    :cond_2
    const-string v1, "large"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    iget v1, p0, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->large:I

    goto :goto_0

    .line 131
    :cond_3
    const-string v1, "medium"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 132
    iget v1, p0, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->medium:I

    goto :goto_0

    .line 134
    :cond_4
    iget v1, p0, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->small:I

    goto :goto_0
.end method
