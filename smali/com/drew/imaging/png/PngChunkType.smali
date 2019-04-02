.class public Lcom/drew/imaging/png/PngChunkType;
.super Ljava/lang/Object;
.source "PngChunkType.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final IDAT:Lcom/drew/imaging/png/PngChunkType;

.field public static final IEND:Lcom/drew/imaging/png/PngChunkType;

.field public static final IHDR:Lcom/drew/imaging/png/PngChunkType;

.field public static final PLTE:Lcom/drew/imaging/png/PngChunkType;

.field private static final _identifiersAllowingMultiples:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final bKGD:Lcom/drew/imaging/png/PngChunkType;

.field public static final cHRM:Lcom/drew/imaging/png/PngChunkType;

.field public static final gAMA:Lcom/drew/imaging/png/PngChunkType;

.field public static final hIST:Lcom/drew/imaging/png/PngChunkType;

.field public static final iCCP:Lcom/drew/imaging/png/PngChunkType;

.field public static final iTXt:Lcom/drew/imaging/png/PngChunkType;

.field public static final pHYs:Lcom/drew/imaging/png/PngChunkType;

.field public static final sBIT:Lcom/drew/imaging/png/PngChunkType;

.field public static final sPLT:Lcom/drew/imaging/png/PngChunkType;

.field public static final sRGB:Lcom/drew/imaging/png/PngChunkType;

.field public static final tEXt:Lcom/drew/imaging/png/PngChunkType;

.field public static final tIME:Lcom/drew/imaging/png/PngChunkType;

.field public static final tRNS:Lcom/drew/imaging/png/PngChunkType;

.field public static final zTXt:Lcom/drew/imaging/png/PngChunkType;


# instance fields
.field private final _bytes:[B

.field private final _multipleAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 33
    const-class v1, Lcom/drew/imaging/png/PngChunkType;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/drew/imaging/png/PngChunkType;->$assertionsDisabled:Z

    .line 35
    new-instance v1, Ljava/util/HashSet;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "IDAT"

    aput-object v5, v4, v3

    const-string v3, "sPLT"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "iTXt"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "tEXt"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "zTXt"

    aput-object v3, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/drew/imaging/png/PngChunkType;->_identifiersAllowingMultiples:Ljava/util/Set;

    .line 109
    :try_start_0
    new-instance v1, Lcom/drew/imaging/png/PngChunkType;

    const-string v2, "IHDR"

    invoke-direct {v1, v2}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/drew/imaging/png/PngChunkType;->IHDR:Lcom/drew/imaging/png/PngChunkType;

    .line 110
    new-instance v1, Lcom/drew/imaging/png/PngChunkType;

    const-string v2, "PLTE"

    invoke-direct {v1, v2}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/drew/imaging/png/PngChunkType;->PLTE:Lcom/drew/imaging/png/PngChunkType;

    .line 111
    new-instance v1, Lcom/drew/imaging/png/PngChunkType;

    const-string v2, "IDAT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lcom/drew/imaging/png/PngChunkType;->IDAT:Lcom/drew/imaging/png/PngChunkType;

    .line 112
    new-instance v1, Lcom/drew/imaging/png/PngChunkType;

    const-string v2, "IEND"

    invoke-direct {v1, v2}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/drew/imaging/png/PngChunkType;->IEND:Lcom/drew/imaging/png/PngChunkType;

    .line 113
    new-instance v1, Lcom/drew/imaging/png/PngChunkType;

    const-string v2, "cHRM"

    invoke-direct {v1, v2}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/drew/imaging/png/PngChunkType;->cHRM:Lcom/drew/imaging/png/PngChunkType;

    .line 114
    new-instance v1, Lcom/drew/imaging/png/PngChunkType;

    const-string v2, "gAMA"

    invoke-direct {v1, v2}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/drew/imaging/png/PngChunkType;->gAMA:Lcom/drew/imaging/png/PngChunkType;

    .line 115
    new-instance v1, Lcom/drew/imaging/png/PngChunkType;

    const-string v2, "iCCP"

    invoke-direct {v1, v2}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/drew/imaging/png/PngChunkType;->iCCP:Lcom/drew/imaging/png/PngChunkType;

    .line 116
    new-instance v1, Lcom/drew/imaging/png/PngChunkType;

    const-string v2, "sBIT"

    invoke-direct {v1, v2}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/drew/imaging/png/PngChunkType;->sBIT:Lcom/drew/imaging/png/PngChunkType;

    .line 117
    new-instance v1, Lcom/drew/imaging/png/PngChunkType;

    const-string v2, "sRGB"

    invoke-direct {v1, v2}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/drew/imaging/png/PngChunkType;->sRGB:Lcom/drew/imaging/png/PngChunkType;

    .line 118
    new-instance v1, Lcom/drew/imaging/png/PngChunkType;

    const-string v2, "bKGD"

    invoke-direct {v1, v2}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/drew/imaging/png/PngChunkType;->bKGD:Lcom/drew/imaging/png/PngChunkType;

    .line 119
    new-instance v1, Lcom/drew/imaging/png/PngChunkType;

    const-string v2, "hIST"

    invoke-direct {v1, v2}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/drew/imaging/png/PngChunkType;->hIST:Lcom/drew/imaging/png/PngChunkType;

    .line 120
    new-instance v1, Lcom/drew/imaging/png/PngChunkType;

    const-string v2, "tRNS"

    invoke-direct {v1, v2}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/drew/imaging/png/PngChunkType;->tRNS:Lcom/drew/imaging/png/PngChunkType;

    .line 121
    new-instance v1, Lcom/drew/imaging/png/PngChunkType;

    const-string v2, "pHYs"

    invoke-direct {v1, v2}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/drew/imaging/png/PngChunkType;->pHYs:Lcom/drew/imaging/png/PngChunkType;

    .line 122
    new-instance v1, Lcom/drew/imaging/png/PngChunkType;

    const-string v2, "sPLT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lcom/drew/imaging/png/PngChunkType;->sPLT:Lcom/drew/imaging/png/PngChunkType;

    .line 123
    new-instance v1, Lcom/drew/imaging/png/PngChunkType;

    const-string v2, "tIME"

    invoke-direct {v1, v2}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/drew/imaging/png/PngChunkType;->tIME:Lcom/drew/imaging/png/PngChunkType;

    .line 124
    new-instance v1, Lcom/drew/imaging/png/PngChunkType;

    const-string v2, "iTXt"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lcom/drew/imaging/png/PngChunkType;->iTXt:Lcom/drew/imaging/png/PngChunkType;

    .line 125
    new-instance v1, Lcom/drew/imaging/png/PngChunkType;

    const-string v2, "tEXt"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lcom/drew/imaging/png/PngChunkType;->tEXt:Lcom/drew/imaging/png/PngChunkType;

    .line 126
    new-instance v1, Lcom/drew/imaging/png/PngChunkType;

    const-string v2, "zTXt"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lcom/drew/imaging/png/PngChunkType;->zTXt:Lcom/drew/imaging/png/PngChunkType;
    :try_end_0
    .catch Lcom/drew/imaging/png/PngProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    return-void

    :cond_0
    move v1, v3

    .line 33
    goto/16 :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Lcom/drew/imaging/png/PngProcessingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/png/PngProcessingException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/drew/imaging/png/PngChunkType;-><init>(Ljava/lang/String;Z)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "identifier"    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "multipleAllowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/png/PngProcessingException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-boolean p2, p0, Lcom/drew/imaging/png/PngChunkType;->_multipleAllowed:Z

    .line 145
    :try_start_0
    const-string v2, "ASCII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 146
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/drew/imaging/png/PngChunkType;->validateBytes([B)V

    .line 147
    iput-object v0, p0, Lcom/drew/imaging/png/PngChunkType;->_bytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    return-void

    .line 148
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to convert string code to bytes."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "bytes"    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/png/PngProcessingException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-static {p1}, Lcom/drew/imaging/png/PngChunkType;->validateBytes([B)V

    .line 156
    iput-object p1, p0, Lcom/drew/imaging/png/PngChunkType;->_bytes:[B

    .line 157
    sget-object v0, Lcom/drew/imaging/png/PngChunkType;->_identifiersAllowingMultiples:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/drew/imaging/png/PngChunkType;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/drew/imaging/png/PngChunkType;->_multipleAllowed:Z

    .line 158
    return-void
.end method

.method private static isLowerCase(B)Z
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 200
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUpperCase(B)Z
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 205
    and-int/lit8 v0, p0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidByte(B)Z
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 210
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static validateBytes([B)V
    .locals 6
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/imaging/png/PngProcessingException;
        }
    .end annotation

    .prologue
    .line 162
    array-length v4, p0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 163
    new-instance v4, Lcom/drew/imaging/png/PngProcessingException;

    const-string v5, "PNG chunk type identifier must be four bytes in length"

    invoke-direct {v4, v5}, Lcom/drew/imaging/png/PngProcessingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 166
    :cond_0
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-byte v1, v0, v2

    .line 167
    .local v1, "b":B
    invoke-static {v1}, Lcom/drew/imaging/png/PngChunkType;->isValidByte(B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 168
    new-instance v4, Lcom/drew/imaging/png/PngProcessingException;

    const-string v5, "PNG chunk type identifier may only contain alphabet characters"

    invoke-direct {v4, v5}, Lcom/drew/imaging/png/PngProcessingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 166
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "b":B
    :cond_2
    return-void
.end method


# virtual methods
.method public areMultipleAllowed()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/drew/imaging/png/PngChunkType;->_multipleAllowed:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 234
    if-ne p0, p1, :cond_0

    .line 235
    const/4 v1, 0x1

    .line 242
    :goto_0
    return v1

    .line 237
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 238
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 240
    check-cast v0, Lcom/drew/imaging/png/PngChunkType;

    .line 242
    .local v0, "that":Lcom/drew/imaging/png/PngChunkType;
    iget-object v1, p0, Lcom/drew/imaging/png/PngChunkType;->_bytes:[B

    iget-object v2, v0, Lcom/drew/imaging/png/PngChunkType;->_bytes:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 4

    .prologue
    .line 216
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/drew/imaging/png/PngChunkType;->_bytes:[B

    const-string v3, "ASCII"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-object v1

    .line 217
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-boolean v1, Lcom/drew/imaging/png/PngChunkType;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 221
    :cond_0
    const-string v1, "Invalid object instance"

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/drew/imaging/png/PngChunkType;->_bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public isAncillary()Z
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/drew/imaging/png/PngChunkType;->isCritical()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCritical()Z
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/drew/imaging/png/PngChunkType;->_bytes:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/drew/imaging/png/PngChunkType;->isUpperCase(B)Z

    move-result v0

    return v0
.end method

.method public isPrivate()Z
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/drew/imaging/png/PngChunkType;->_bytes:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/drew/imaging/png/PngChunkType;->isUpperCase(B)Z

    move-result v0

    return v0
.end method

.method public isSafeToCopy()Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/drew/imaging/png/PngChunkType;->_bytes:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/drew/imaging/png/PngChunkType;->isLowerCase(B)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/drew/imaging/png/PngChunkType;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
