.class public Lcom/samsung/javaomp/compiler/JavaCharStream;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final staticFlag:Z


# instance fields
.field available:I

.field protected bufcolumn:[I

.field protected buffer:[C

.field protected bufline:[I

.field public bufpos:I

.field bufsize:I

.field protected column:I

.field protected inBuf:I

.field protected inputStream:Ljava/io/Reader;

.field protected line:I

.field protected maxNextCharInd:I

.field protected nextCharBuf:[C

.field protected nextCharInd:I

.field protected prevCharIsCR:Z

.field protected prevCharIsLF:Z

.field protected tabSize:I

.field tokenBegin:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x1000

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;-><init>(Ljava/io/InputStream;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;-><init>(Ljava/io/InputStream;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;III)V
    .locals 2

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x1000

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v3, 0x1

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/javaomp/compiler/JavaCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/javaomp/compiler/JavaCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/samsung/javaomp/compiler/JavaCharStream;-><init>(Ljava/io/Reader;III)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x1000

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;II)V
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->column:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->line:I

    iput-boolean v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->prevCharIsCR:Z

    iput-boolean v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->prevCharIsLF:Z

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->maxNextCharInd:I

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->nextCharInd:I

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->inBuf:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tabSize:I

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->inputStream:Ljava/io/Reader;

    iput p2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->line:I

    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->column:I

    iput p4, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    iput p4, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->available:I

    new-array v0, p4, [C

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->buffer:[C

    new-array v0, p4, [I

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufline:[I

    new-array v0, p4, [I

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufcolumn:[I

    const/16 v0, 0x1000

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->nextCharBuf:[C

    return-void
.end method

.method static final hexval(C)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    :pswitch_3
    const/4 v0, 0x2

    return v0

    :pswitch_4
    const/4 v0, 0x3

    return v0

    :pswitch_5
    const/4 v0, 0x4

    return v0

    :pswitch_6
    const/4 v0, 0x5

    return v0

    :pswitch_7
    const/4 v0, 0x6

    return v0

    :pswitch_8
    const/4 v0, 0x7

    return v0

    :pswitch_9
    const/16 v0, 0x8

    return v0

    :pswitch_a
    const/16 v0, 0x9

    return v0

    :pswitch_b
    const/16 v0, 0xa

    return v0

    :pswitch_c
    const/16 v0, 0xb

    return v0

    :pswitch_d
    const/16 v0, 0xc

    return v0

    :pswitch_e
    const/16 v0, 0xd

    return v0

    :pswitch_f
    const/16 v0, 0xe

    return v0

    :pswitch_10
    const/16 v0, 0xf

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method protected AdjustBuffSize()V
    .locals 4

    const/16 v3, 0x800

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->available:I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->available:I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->available:I

    sub-int/2addr v0, v1

    if-lt v0, v3, :cond_3

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    :goto_0
    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->available:I

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    if-gt v0, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->ExpandBuff(Z)V

    goto :goto_1

    :cond_1
    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->ExpandBuff(Z)V

    goto :goto_1
.end method

.method public BeginToken()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->inBuf:I

    if-gtz v0, :cond_0

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->inBuf:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->inBuf:I

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    if-eq v0, v1, :cond_1

    :goto_0
    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->buffer:[C

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    aget-char v0, v0, v1

    return v0

    :cond_1
    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    goto :goto_0
.end method

.method public Done()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->nextCharBuf:[C

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->buffer:[C

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufline:[I

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufcolumn:[I

    return-void
.end method

.method protected ExpandBuff(Z)V
    .locals 9

    const/4 v8, 0x0

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    add-int/lit16 v0, v0, 0x800

    new-array v0, v0, [C

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    add-int/lit16 v1, v1, 0x800

    new-array v1, v1, [I

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    add-int/lit16 v2, v2, 0x800

    new-array v2, v2, [I

    if-nez p1, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->buffer:[C

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    const/4 v5, 0x0

    iget v6, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    iget v7, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->buffer:[C

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufline:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    iget v6, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufline:[I

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufcolumn:[I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    iget v5, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufcolumn:[I

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    add-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->available:I

    iput v8, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->buffer:[C

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    const/4 v5, 0x0

    iget v6, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    iget v7, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->buffer:[C

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    iget v6, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->buffer:[C

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufline:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    iget v6, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufline:[I

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    iget v5, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufline:[I

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufcolumn:[I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    iget v5, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufcolumn:[I

    const/4 v1, 0x0

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufcolumn:[I

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected FillBuff()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->maxNextCharInd:I

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->inputStream:Ljava/io/Reader;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->nextCharBuf:[C

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->maxNextCharInd:I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->maxNextCharInd:I

    rsub-int v3, v3, 0x1000

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->maxNextCharInd:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->maxNextCharInd:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->nextCharInd:I

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->maxNextCharInd:I

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->inputStream:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufline:[I

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->line:I

    aput v3, v1, v2

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufcolumn:[I

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->column:I

    aput v3, v1, v2

    :goto_1
    throw v0

    :cond_2
    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    invoke-virtual {p0, v4}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V

    goto :goto_1
.end method

.method public GetImage()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->buffer:[C

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    iget v5, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->buffer:[C

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->buffer:[C

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public GetSuffix(I)[C
    .locals 5

    const/4 v4, 0x0

    new-array v0, p1, [C

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_0

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->buffer:[C

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->buffer:[C

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->buffer:[C

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->ReInit(Ljava/io/InputStream;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;II)V
    .locals 1

    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->ReInit(Ljava/io/InputStream;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;III)V
    .locals 1

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/samsung/javaomp/compiler/JavaCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v3, 0x1

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/javaomp/compiler/JavaCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/javaomp/compiler/JavaCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/samsung/javaomp/compiler/JavaCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;II)V
    .locals 1

    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;III)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->inputStream:Ljava/io/Reader;

    iput p2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->line:I

    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->column:I

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->buffer:[C

    if-nez v0, :cond_1

    :cond_0
    iput p4, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    iput p4, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->available:I

    new-array v0, p4, [C

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->buffer:[C

    new-array v0, p4, [I

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufline:[I

    new-array v0, p4, [I

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufcolumn:[I

    const/16 v0, 0x1000

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->nextCharBuf:[C

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->prevCharIsCR:Z

    iput-boolean v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->prevCharIsLF:Z

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->maxNextCharInd:I

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->inBuf:I

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->nextCharInd:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->buffer:[C

    array-length v0, v0

    if-ne p4, v0, :cond_0

    goto :goto_0
.end method

.method protected ReadByte()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->nextCharInd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->nextCharInd:I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->maxNextCharInd:I

    if-ge v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->nextCharBuf:[C

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->nextCharInd:I

    aget-char v0, v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->FillBuff()V

    goto :goto_0
.end method

.method protected UpdateLineColumn(C)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->column:I

    iget-boolean v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->prevCharIsLF:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->prevCharIsCR:Z

    if-nez v0, :cond_1

    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufline:[I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->line:I

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufcolumn:[I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->column:I

    aput v2, v0, v1

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->prevCharIsLF:Z

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->line:I

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->column:I

    :goto_2
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->line:I

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->prevCharIsCR:Z

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->line:I

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->column:I

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->prevCharIsLF:Z

    goto :goto_0

    :pswitch_1
    iput-boolean v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->prevCharIsCR:Z

    goto :goto_1

    :pswitch_2
    iput-boolean v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->prevCharIsLF:Z

    goto :goto_1

    :pswitch_3
    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->column:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->column:I

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->column:I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tabSize:I

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->column:I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tabSize:I

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->column:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public adjustBeginLineColumn(II)V
    .locals 8

    const/4 v1, 0x0

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    if-ge v0, v2, :cond_2

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->inBuf:I

    add-int/2addr v0, v2

    :goto_0
    move v5, v1

    move v2, v1

    :goto_1
    if-lt v2, v0, :cond_3

    :cond_0
    if-lt v2, v0, :cond_4

    :cond_1
    move v0, v1

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufline:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->line:I

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufcolumn:[I

    aget v0, v1, v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->column:I

    return-void

    :cond_2
    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->inBuf:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufline:[I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    rem-int v1, v3, v1

    aget v4, v4, v1

    iget-object v6, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufline:[I

    add-int/lit8 v3, v3, 0x1

    iget v7, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    rem-int v7, v3, v7

    aget v6, v6, v7

    if-ne v4, v6, :cond_0

    iget-object v4, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufline:[I

    aput p1, v4, v1

    iget-object v4, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufcolumn:[I

    aget v4, v4, v7

    add-int/2addr v4, v5

    iget-object v6, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufcolumn:[I

    aget v6, v6, v1

    sub-int/2addr v4, v6

    iget-object v6, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufcolumn:[I

    add-int/2addr v5, p2

    aput v5, v6, v1

    add-int/lit8 v2, v2, 0x1

    move v5, v4

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufline:[I

    add-int/lit8 v4, p1, 0x1

    aput p1, v6, v1

    iget-object v6, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufcolumn:[I

    add-int/2addr v5, p2

    aput v5, v6, v1

    move v5, v4

    move v4, v3

    :goto_2
    add-int/lit8 v3, v2, 0x1

    if-ge v2, v0, :cond_1

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufline:[I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    rem-int v1, v4, v1

    aget v6, v2, v1

    iget-object v7, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufline:[I

    add-int/lit8 v2, v4, 0x1

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    rem-int v4, v2, v4

    aget v4, v7, v4

    if-ne v6, v4, :cond_5

    iget-object v4, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufline:[I

    aput v5, v4, v1

    move v4, v2

    move v2, v3

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufline:[I

    add-int/lit8 v4, v5, 0x1

    aput v5, v6, v1

    move v5, v4

    move v4, v2

    move v2, v3

    goto :goto_2
.end method

.method public backup(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->inBuf:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->inBuf:I

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    if-ltz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    goto :goto_0
.end method

.method public getBeginColumn()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufcolumn:[I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getBeginLine()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufline:[I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getColumn()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufcolumn:[I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndColumn()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufcolumn:[I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndLine()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufline:[I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getLine()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufline:[I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method protected getTabSize(I)I
    .locals 1

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tabSize:I

    return v0
.end method

.method public readChar()C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x75

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v6, 0x5c

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->inBuf:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->available:I

    if-eq v0, v2, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->buffer:[C

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->ReadByte()C

    move-result v3

    int-to-char v4, v3

    aput-char v4, v0, v2

    if-eq v3, v6, :cond_3

    invoke-virtual {p0, v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->UpdateLineColumn(C)V

    return v3

    :cond_0
    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->inBuf:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->inBuf:I

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    if-eq v0, v1, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->buffer:[C

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    aget-char v0, v0, v1

    return v0

    :cond_1
    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->AdjustBuffSize()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->UpdateLineColumn(C)V

    move v0, v1

    :goto_2
    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->available:I

    if-eq v2, v3, :cond_4

    :goto_3
    :try_start_0
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->buffer:[C

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->ReadByte()C

    move-result v4

    int-to-char v5, v4

    aput-char v5, v2, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v6, :cond_5

    invoke-virtual {p0, v4}, Lcom/samsung/javaomp/compiler/JavaCharStream;->UpdateLineColumn(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->AdjustBuffSize()V

    goto :goto_3

    :cond_5
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/samsung/javaomp/compiler/JavaCharStream;->UpdateLineColumn(C)V

    if-eq v4, v7, :cond_7

    :cond_6
    invoke-virtual {p0, v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V

    return v6

    :cond_7
    and-int/lit8 v2, v0, 0x1

    if-ne v2, v1, :cond_6

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-ltz v2, :cond_8

    :goto_4
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->ReadByte()C

    move-result v2

    if-eq v2, v7, :cond_a

    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->buffer:[C

    iget v4, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I

    invoke-static {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->hexval(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->ReadByte()C

    move-result v5

    invoke-static {v5}, Lcom/samsung/javaomp/compiler/JavaCharStream;->hexval(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->ReadByte()C

    move-result v5

    invoke-static {v5}, Lcom/samsung/javaomp/compiler/JavaCharStream;->hexval(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v2, v5

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->ReadByte()C

    move-result v5

    invoke-static {v5}, Lcom/samsung/javaomp/compiler/JavaCharStream;->hexval(C)I

    move-result v5

    or-int/2addr v2, v5

    int-to-char v2, v2

    int-to-char v5, v2

    aput-char v5, v3, v4

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->column:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->column:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-eq v0, v1, :cond_b

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V

    return v6

    :cond_8
    :try_start_3
    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufsize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->bufpos:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    if-gt v0, v1, :cond_9

    :goto_5
    return v6

    :cond_9
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V

    goto :goto_5

    :cond_a
    :try_start_4
    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->column:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->column:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid escape character at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->line:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->column:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    return v2
.end method

.method protected setTabSize(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/javaomp/compiler/JavaCharStream;->tabSize:I

    return-void
.end method
