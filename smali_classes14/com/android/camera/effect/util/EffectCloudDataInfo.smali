.class public Lcom/android/camera/effect/util/EffectCloudDataInfo;
.super Ljava/lang/Object;
.source "EffectCloudDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;
    }
.end annotation


# instance fields
.field private category:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;

.field private progress:I

.field private resoruces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;",
            ">;"
        }
    .end annotation
.end field

.field private revision:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo;->progress:I

    return v0
.end method

.method public getResoruces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo;->resoruces:Ljava/util/List;

    return-object v0
.end method

.method public getRevision()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo;->revision:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo;->version:I

    return v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo;->category:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo;->code:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo;->id:I

    .line 40
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo;->name:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo;->progress:I

    .line 56
    return-void
.end method

.method public setResoruces(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "resoruces":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;>;"
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo;->resoruces:Ljava/util/List;

    .line 104
    return-void
.end method

.method public setRevision(Ljava/lang/String;)V
    .locals 0
    .param p1, "revision"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo;->revision:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo;->type:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo;->version:I

    .line 64
    return-void
.end method
