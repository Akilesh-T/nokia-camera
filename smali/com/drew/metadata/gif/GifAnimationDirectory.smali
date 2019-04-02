.class public Lcom/drew/metadata/gif/GifAnimationDirectory;
.super Lcom/drew/metadata/Directory;
.source "GifAnimationDirectory.java"


# static fields
.field public static final TAG_ITERATION_COUNT:I = 0x1

.field protected static final _tagNameMap:Ljava/util/HashMap;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/gif/GifAnimationDirectory;->_tagNameMap:Ljava/util/HashMap;

    .line 42
    sget-object v0, Lcom/drew/metadata/gif/GifAnimationDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Iteration Count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 47
    new-instance v0, Lcom/drew/metadata/gif/GifAnimationDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/gif/GifAnimationDescriptor;-><init>(Lcom/drew/metadata/gif/GifAnimationDirectory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/gif/GifAnimationDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    .line 54
    const-string v0, "GIF Animation"

    return-object v0
.end method

.method protected getTagNameMap()Ljava/util/HashMap;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    sget-object v0, Lcom/drew/metadata/gif/GifAnimationDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
