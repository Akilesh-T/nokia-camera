.class Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;
.super Ljava/lang/Object;
.source "ConcurrentSharedRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/ConcurrentSharedRingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pinnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private mPins:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->mElement:Ljava/lang/Object;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->mPins:I

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->mElement:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->mElement:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->isPinned()Z

    move-result v0

    return v0
.end method

.method static synthetic access$208(Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;

    .prologue
    .line 112
    iget v0, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->mPins:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->mPins:I

    return v0
.end method

.method static synthetic access$210(Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;

    .prologue
    .line 112
    iget v0, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->mPins:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->mPins:I

    return v0
.end method

.method private isPinned()Z
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;"
    iget v0, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->mPins:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;"
    iget-object v0, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->mElement:Ljava/lang/Object;

    return-object v0
.end method
