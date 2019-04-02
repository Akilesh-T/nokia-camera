.class public abstract Lcom/google/protobuf/nano/nano/NanoDescriptor;
.super Ljava/lang/Object;
.source "NanoDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/nano/NanoDescriptor$Munger;,
        Lcom/google/protobuf/nano/nano/NanoDescriptor$GenerateAs;
    }
.end annotation


# static fields
.field public static final emeritus:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final encodedMungee:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;",
            "[B>;"
        }
    .end annotation
.end field

.field public static final enumAsLite:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final fileAsLite:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final generateAs:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final legacyEnum:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final legacyOneof:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final messageAsLite:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final munger:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final unmungedDepsCompliant:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final watermarkCompliant:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelisted:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$EnumValueOptions;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const-wide/32 v2, 0x55664f42

    const/16 v9, 0xe

    const/16 v8, 0x8

    .line 15
    const-class v0, Ljava/lang/Boolean;

    const-wide/32 v4, 0x4663df20

    .line 16
    invoke-static {v8, v0, v4, v5}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/nano/nano/NanoDescriptor;->legacyOneof:Lcom/google/protobuf/nano/Extension;

    .line 26
    const-class v0, Ljava/lang/Boolean;

    const-wide/32 v4, 0x473f92d8

    .line 27
    invoke-static {v8, v0, v4, v5}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/nano/nano/NanoDescriptor;->messageAsLite:Lcom/google/protobuf/nano/Extension;

    .line 37
    const-class v0, Ljava/lang/Boolean;

    const-wide/32 v4, 0x473fae58

    .line 38
    invoke-static {v8, v0, v4, v5}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/nano/nano/NanoDescriptor;->enumAsLite:Lcom/google/protobuf/nano/Extension;

    .line 48
    const-class v0, Ljava/lang/Boolean;

    const-wide/32 v4, 0x4df9b818

    .line 49
    invoke-static {v8, v0, v4, v5}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/nano/nano/NanoDescriptor;->legacyEnum:Lcom/google/protobuf/nano/Extension;

    .line 59
    const-class v0, Ljava/lang/Integer;

    const-wide/32 v4, 0x55b04610

    .line 60
    invoke-static {v9, v0, v4, v5}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/nano/nano/NanoDescriptor;->generateAs:Lcom/google/protobuf/nano/Extension;

    .line 70
    const-class v0, Ljava/lang/Boolean;

    const-wide/32 v4, 0x4d9529e8

    .line 71
    invoke-static {v8, v0, v4, v5}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/nano/nano/NanoDescriptor;->watermarkCompliant:Lcom/google/protobuf/nano/Extension;

    .line 81
    const-class v0, Ljava/lang/Boolean;

    const-wide/32 v4, 0x4df4da28

    .line 82
    invoke-static {v8, v0, v4, v5}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/nano/nano/NanoDescriptor;->emeritus:Lcom/google/protobuf/nano/Extension;

    .line 92
    const-class v0, Ljava/lang/Boolean;

    const-wide/32 v4, 0x512fe718

    .line 93
    invoke-static {v8, v0, v4, v5}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/nano/nano/NanoDescriptor;->unmungedDepsCompliant:Lcom/google/protobuf/nano/Extension;

    .line 103
    const/16 v0, 0x9

    const-class v1, [Ljava/lang/String;

    const-wide/16 v6, 0x0

    move-wide v4, v2

    .line 104
    invoke-static/range {v0 .. v7}, Lcom/google/protobuf/nano/Extension;->createRepeatedPrimitiveTyped(ILjava/lang/Class;JJJ)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/nano/nano/NanoDescriptor;->whitelisted:Lcom/google/protobuf/nano/Extension;

    .line 114
    const-class v0, Ljava/lang/Integer;

    const-wide/32 v2, 0x4a21b128

    .line 115
    invoke-static {v9, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/nano/nano/NanoDescriptor;->munger:Lcom/google/protobuf/nano/Extension;

    .line 125
    const/16 v0, 0xc

    const-class v1, [B

    const-wide/32 v2, 0x4afafa12

    .line 126
    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/nano/nano/NanoDescriptor;->encodedMungee:Lcom/google/protobuf/nano/Extension;

    .line 136
    const-class v0, Ljava/lang/Boolean;

    const-wide/32 v2, 0x5623c8e0

    .line 137
    invoke-static {v8, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/nano/nano/NanoDescriptor;->fileAsLite:Lcom/google/protobuf/nano/Extension;

    .line 136
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGenerateAsOrThrow(I)I
    .locals 3
    .param p0, "value"    # I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/nano/NanoDescriptor$GenerateAs;
    .end annotation

    .prologue
    .line 157
    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    .line 158
    return p0

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid enum GenerateAs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkGenerateAsOrThrow([I)[I
    .locals 4
    .param p0, "values"    # [I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/nano/NanoDescriptor$GenerateAs;
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 168
    .local v0, "copy":[I
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 169
    .local v1, "value":I
    invoke-static {v1}, Lcom/google/protobuf/nano/nano/NanoDescriptor;->checkGenerateAsOrThrow(I)I

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "value":I
    :cond_0
    return-object v0
.end method

.method public static checkMungerOrThrow(I)I
    .locals 3
    .param p0, "value"    # I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/nano/NanoDescriptor$Munger;
    .end annotation

    .prologue
    .line 223
    if-ltz p0, :cond_1

    const/16 v0, 0x12

    if-gt p0, v0, :cond_1

    .line 227
    :cond_0
    return p0

    .line 226
    :cond_1
    const/16 v0, 0x64

    if-lt p0, v0, :cond_2

    const/16 v0, 0x65

    if-le p0, v0, :cond_0

    .line 229
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid enum Munger"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkMungerOrThrow([I)[I
    .locals 4
    .param p0, "values"    # [I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/nano/NanoDescriptor$Munger;
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 237
    .local v0, "copy":[I
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 238
    .local v1, "value":I
    invoke-static {v1}, Lcom/google/protobuf/nano/nano/NanoDescriptor;->checkMungerOrThrow(I)I

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    .end local v1    # "value":I
    :cond_0
    return-object v0
.end method
