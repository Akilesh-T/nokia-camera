.class public Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;
.super Ljava/lang/Object;
.source "EffectCloudDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/util/EffectCloudDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResorucesBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;,
        Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$MetadataBean;
    }
.end annotation


# instance fields
.field private category:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field private metadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$MetadataBean;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private revision:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->files:Ljava/util/List;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->id:I

    return v0
.end method

.method public getMetadata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$MetadataBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->metadata:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRevision()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->revision:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->version:I

    return v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->category:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->code:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setFiles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;>;"
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->files:Ljava/util/List;

    .line 199
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->id:I

    .line 135
    return-void
.end method

.method public setMetadata(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$MetadataBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "metadata":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$MetadataBean;>;"
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->metadata:Ljava/util/List;

    .line 191
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->name:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setRevision(Ljava/lang/String;)V
    .locals 0
    .param p1, "revision"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->revision:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->type:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->version:I

    .line 151
    return-void
.end method
