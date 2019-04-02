.class public Lcom/android/camera/data/FilmstripItemAttributes$Builder;
.super Ljava/lang/Object;
.source "FilmstripItemAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/FilmstripItemAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mAttributes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/camera/data/FilmstripItemAttributes$Attributes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-class v0, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->mAttributes:Ljava/util/EnumSet;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/camera/data/FilmstripItemAttributes;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Lcom/android/camera/data/FilmstripItemAttributes;

    iget-object v1, p0, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->mAttributes:Ljava/util/EnumSet;

    invoke-static {v1}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/data/FilmstripItemAttributes;-><init>(Ljava/util/EnumSet;Lcom/android/camera/data/FilmstripItemAttributes$1;)V

    return-object v0
.end method

.method public with(Lcom/android/camera/data/FilmstripItemAttributes$Attributes;)Lcom/android/camera/data/FilmstripItemAttributes$Builder;
    .locals 1
    .param p1, "attribute"    # Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->mAttributes:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 95
    return-object p0
.end method
